# Versions and roadmap

[Back to the README](../README.md)

GeoReminder is built in sprints. Each sprint adds one area of the app and ends with a version
numbered `v0.<sprint>.<fix>`. The full notes of every version, with its APK, are on the
[Releases](https://github.com/methan6427/GeoReminder/releases) page.

- [Released](#released)
- [Coming next](#coming-next)
- [Not planned](#not-planned)

## Released

### v0.6.2: reminder fixes

- Trips planned for a later day now remind on their day, even if the app is not opened.
- A reminder left over from a finished trip can no longer change it. **Complete** on it does
  nothing, an open alert closes itself, and no task of a finished trip can be completed.

### v0.6.1: pause, resume, offline place picker

- **Pause trip** and **Resume trip** in a trip's menu. A paused trip shows a **Paused** chip.
- A paused trip gives no task reminders. Reaching one of its places shows one reminder
  instead: **"Don't forget your trip"**, with **Resume**.
- The place picker says when you are offline, and still lets you place the pin and save.
- Two frequent places can't have the same name.

### v0.6.0: Trip Mode

- Trips are now planned, active, paused or finished.
- **Trip Mode**: one large screen with the next stop and its distance, **Complete**, and
  spoken prompts through the phone's own voice.
- The app offers Trip Mode when the phone connects to the car by Bluetooth (optional
  **Connect to your car** step in the reminder setup).
- Fixes: the release APK no longer crashes at launch; screen reader labels in the reminder
  checklist; task count on small screens.

### v0.5.0: reminders

- **Arrive and leave reminders**, even when the app is closed, with **Complete** and
  **Later** on the notification and a full-screen alert.
- Arriving at a locked task says what to complete first.
- A guided **Reminders** setup in Settings: location all the time, notifications, battery
  and Samsung sleeping apps.
- Up to 100 places watched on Android (20 on iPhone), picked by priority. They are watched
  again after a reboot or an update.

### v0.4.0: map and places

- Places are picked on an **OpenStreetMap** map with a radius circle, or found by **address
  search**.
- **Frequent places**, saved in Settings and offered as chips in the place picker.
- The **Map** tab shows the active trip's tasks as pins (done, next up, locked, open), with
  **Complete** and **Navigate**.

### v0.3.1: first release

- Trips and tasks, on the phone only.
- Tasks that **wait for other tasks**, with locked tasks and no loops allowed.
- **Suggested order** by straight-line distance that respects what waits for what.
- Home tabs: Active, Upcoming and History. Light and dark theme. The app icon.
- Before it, two versions without screens built the sharing backend (v0.1.0) and the app's
  data and storage layer (v0.2.0).

## Coming next

Plans can change. Each item lists the version it is planned for.

| Version | What |
|---|---|
| **v0.7** | **Sharing a trip.** Anonymous sign-in with a nickname (no email or password), share a trip with a 6-character code valid for 10 minutes, join by code, up to 10 people, stop sharing. |
| **v0.8** | **Doing a shared trip together.** Everyone sees the same tasks, live. Completing respects what waits for what, checked on the server too. Completions made offline are sent when the connection is back. |
| **v0.9** | **Calendar and repeating trips.** Trips on a calendar, repeat daily, weekly or monthly, and a reminder on a trip's day. |
| **v0.10** | **History and backups.** A fuller History with who completed what. Export trips to a file and import them again. |
| **v0.11** | **Road distance.** The suggested order and Trip Mode use distance along roads, falling back to straight-line distance offline. Still distance only, never time. |
| **v0.12** | **Settings and your data.** More settings, terms and privacy screens, **Delete all my data** (on the phone and on the sharing server), and an About screen. |
| **v1.0** | **First full release.** Welcome screens on first run, an accessibility pass, a release signing key. |
| **v1.1** | **iPhone.** The iPhone version already builds and is being tested on a real iPhone. |

Also planned: showing your own position on the map.

When the app moves to a release signing key (v1.0), Android will need the old version removed
once before the new one installs. See [Install](install.md#why-the-apk-is-signed-with-a-debug-key).

## Not planned

- **Times, arrival estimates or trip durations.** GeoReminder shows distances only, by
  design.
- **Turn-by-turn navigation.** **Navigate** hands the place to your maps app.
- **Uploading your location**, including for shared trips.
- **Ads or tracking.**
