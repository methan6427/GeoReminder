# Install GeoReminder

[Back to the README](../README.md)

- [Android](#android)
- [Updating](#updating)
- [Removing the app](#removing-the-app)
- [iPhone](#iphone)
- [Checking the download](#checking-the-download)

## Android

**You need:** Android 7.0 or newer, and Google Play services (almost every Android phone sold
with the Play Store has it). The phone's geofencing, which the reminders rely on, comes from
Google Play services.

1. On your phone, open the [latest release](https://github.com/methan6427/GeoReminder/releases/latest).
2. Under **Assets**, tap `georeminder-v<version>.apk` (for example `georeminder-v0.8.0.apk`).
3. Open the downloaded file, from the browser's download message or from the **Files** app.
4. Android asks whether to allow installs from this source the first time. Tap **Settings**,
   turn on **Allow from this source** for your browser or file manager, then go back.
5. Tap **Install**. If Google Play Protect asks about an unknown app, choose
   **Install anyway**. The app is not on the Play Store yet, so Play Protect does not know it.
6. Open **GeoReminder**. To get reminders, go to **Settings > Reminders** and follow the
   steps (see the [user guide](user-guide.md#setting-up-reminders)).

After installing you can turn **Allow from this source** off again.

### Why the APK is "signed with a debug key"

The release notes say the APK is signed with the debug key. That only means it is not signed
for the Play Store yet. It is the same app, built automatically from the source for every
release. When the app moves to a store key in a later version, you will need to remove the old
version once before installing the new one (your trips stay only if you export them first;
export comes in a later version).

## Updating

1. Download the new APK from [Releases](https://github.com/methan6427/GeoReminder/releases/latest).
2. Open it and tap **Update**. Your trips, tasks and places are kept.
3. Reminders are set up again by themselves after the update. You don't need to open the app.

Installing an **older** version over a newer one is refused by Android. Remove the app first
if you really need an older version (this deletes your trips).

## Removing the app

Hold the GeoReminder icon, tap **App info**, then **Uninstall**. This deletes all your trips,
tasks and places from the phone. GeoReminder keeps no copy anywhere. If Android's own backup
to your Google account is turned on, Android may restore the app's data when you install it
again on the same account.

## iPhone

There is no iPhone download yet. The iPhone version builds and runs on the iPhone simulator
and is being tested on a real iPhone now. Installing an app outside the App Store needs a Mac
and an Apple account, and an install with a free Apple account stops working after 7 days.
An iPhone download will be added here when it is ready. See the [roadmap](roadmap.md).

## Checking the download

Each release lists the file's SHA-256 checksum at the bottom of its notes. To check it on a
computer:

- Windows (PowerShell): `Get-FileHash georeminder-v0.8.0.apk -Algorithm SHA256`
- macOS or Linux: `shasum -a 256 georeminder-v0.8.0.apk`

The result must match the checksum in the release notes.
