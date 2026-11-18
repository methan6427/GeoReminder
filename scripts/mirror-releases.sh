#!/usr/bin/env bash
# Copies every published release of the private app repository into this public
# repository: the same tag, title and notes, the APK, and the APK's SHA-256 checksum.
# Releases that are already here are left alone, so running it again is harmless.
#
# Environment:
#   SRC_TOKEN    read-only token for SOURCE_REPO (Contents: read)        required
#   GH_TOKEN     token that may create releases in REPO                   required
#   SOURCE_REPO  owner/name of the private app repository                 default methan6427/GeoReminder-flutter
#   REPO         owner/name of this repository                            default methan6427/GeoReminder
#   DRY_RUN      1 = only print what would be mirrored                    default 0
set -euo pipefail

SOURCE_REPO="${SOURCE_REPO:-methan6427/GeoReminder-flutter}"
REPO="${REPO:-methan6427/GeoReminder}"
DRY_RUN="${DRY_RUN:-0}"

if [[ -z "${SRC_TOKEN:-}" ]]; then
  echo "::error::SOURCE_RELEASES_TOKEN is not set. Add a read-only token for $SOURCE_REPO as a repository secret."
  exit 1
fi
if [[ -z "${GH_TOKEN:-}" ]]; then
  echo "::error::GH_TOKEN is not set."
  exit 1
fi

src() { GH_TOKEN="$SRC_TOKEN" gh "$@"; }

# Published, non-draft, non-prerelease tags of the app, oldest version first.
# Each listing is read into a variable first: a failed call then stops the script, where
# `mapfile < <(...)` would hide the failure and carry on with an empty list.
listing="$(
  src release list -R "$SOURCE_REPO" --limit 200 \
    --json tagName,isDraft,isPrerelease \
    --jq '.[] | select((.isDraft | not) and (.isPrerelease | not)) | .tagName'
)"
mapfile -t source_tags < <(printf '%s\n' "$listing" | sed '/^$/d' | sort -V)
if (( ${#source_tags[@]} == 0 )); then
  echo "No published releases in $SOURCE_REPO."
  exit 0
fi
newest="${source_tags[-1]}"

# Published releases here are done. A draft here is what an interrupted upload leaves
# behind; it is removed and made again.
listing="$(
  gh release list -R "$REPO" --limit 200 --json tagName,isDraft \
    --jq '.[] | (if .isDraft then "draft " else "done " end) + .tagName'
)"
mapfile -t mirrored < <(printf '%s\n' "$listing" | sed '/^$/d')
declare -A have=()
declare -A draft=()
for line in "${mirrored[@]}"; do
  state="${line%% *}"
  t="${line#* }"
  if [[ "$state" == "done" ]]; then have["$t"]=1; else draft["$t"]=1; fi
done

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

added=0
for tag in "${source_tags[@]}"; do
  if [[ -n "${have[$tag]:-}" ]]; then
    continue
  fi
  echo "Mirroring $tag"
  dir="$work/$tag"
  mkdir -p "$dir"

  apk_names="$(src release view "$tag" -R "$SOURCE_REPO" --json assets \
    --jq '.assets[].name | select(endswith(".apk"))')"
  if [[ -z "$apk_names" ]]; then
    echo "::warning::$tag has no APK in $SOURCE_REPO; skipped."
    continue
  fi
  src release download "$tag" -R "$SOURCE_REPO" -p '*.apk' -D "$dir"
  apks=("$dir"/*.apk)

  title="$(src release view "$tag" -R "$SOURCE_REPO" --json name --jq '.name')"
  [[ -n "$title" ]] || title="GeoReminder $tag"
  notes="$dir/notes.md"
  src release view "$tag" -R "$SOURCE_REPO" --json body --jq '.body' > "$notes"
  {
    echo
    echo "---"
    echo
    echo "**How to install:** see [docs/install.md](https://github.com/$REPO/blob/main/docs/install.md)."
    echo
    echo "**SHA-256 checksums**"
    echo
    for apk in "${apks[@]}"; do
      echo "- \`$(basename "$apk")\`: \`$(sha256sum "$apk" | cut -d' ' -f1)\`"
    done
  } >> "$notes"

  latest_flag="--latest=false"
  [[ "$tag" == "$newest" ]] && latest_flag="--latest"

  if [[ "$DRY_RUN" == "1" ]]; then
    echo "Would create $tag ($title) $latest_flag with: ${apks[*]##*/}"
  else
    if [[ -n "${draft[$tag]:-}" ]]; then
      echo "Removing the unfinished draft of $tag"
      gh release delete "$tag" -R "$REPO" --yes --cleanup-tag
    fi
    gh release create "$tag" "${apks[@]}" -R "$REPO" \
      --title "$title" --notes-file "$notes" --target main "$latest_flag"
  fi
  added=$((added + 1))
done

echo "Done: $added new release(s); newest app version is $newest."
