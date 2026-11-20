# Versions and roadmap

[Back to the README](../README.md)

GeoReminder is built in sprints. Each sprint adds one area of the app and ends with a version
numbered `v0.<sprint>.<fix>`. The full notes of every version, with its APK, are on the
[Releases](https://github.com/methan6427/GeoReminder/releases) page.

- [Released](#released)
- [Coming next](#coming-next)
- [Not planned](#not-planned)

## Released

### v0.8.6: an Arabic voice for Trip Mode

- **Arabic speech.** With the app in Arabic, Trip Mode says every prompt in Arabic, with
  Arabic count forms for distances and Western digits.
- **Settings > Trip Mode voice.** Numbered English and Arabic voices, each with a ▶
  sample; the picks are kept.

### v0.8.5: Arabic

- **Settings > Language.** System (the default, follows the phone), English or العربية;
  the app switches at once.
- **Every screen in Arabic,** laid out right to left, with Western digits and Arabic counts.
- **Reminders and messages** in the chosen language, also when the app is closed.

### v0.8.4: every trip on one map

- **All active trips at once.** The Map tab shows every active trip's tasks, each trip in
  its own colour; the pin's icon shows open, next, locked or done.
- **Filter.** With more than one active trip, a row of chips picks All or one trip.
- **Trip colours on Home.** Active and Upcoming cards have a dot in the trip's colour.

### v0.8.3: your position on the map

- **Blue dot.** The Map tab shows where you are, with a circle as wide as the GPS accuracy,
  and a button that moves the map to you.
- **Direction.** A cone on the dot points the way the phone faces; while moving fast it
  follows the direction of travel.
- **Battery.** Location and the compass run only while the Map tab is on screen.

### v0.8.2: first-launch setup, light and dark

- **Permissions on the first launch.** The first time the app opens, it walks through the
  reminder setup: location all the time, notifications, the car connection (Android) and the
  battery setting. Every step can be skipped, and it is offered once.
- **Light and dark mode.** Settings > Appearance picks System (the default), Light or Dark.
- **Complete is a button.** In a task's sheet, Complete is now a full-width button; a locked
  task shows a grey "Complete (locked)" button.

### v0.8.1: who completed what

- **Done by.** On a shared trip, each done task shows who completed it ("Done by Lina", or
  "Done by you"). The names stay on the phone after sharing stops.
- **Trip Mode tells the driver.** When someone else completes a task while Trip Mode is
  open, it says so ("Lina completed Bank.") and shows the line on screen.

### v0.8.0: doing a shared trip together

- **Completions everyone sees.** Completing a task on a shared trip shows it as done on every
  phone within a few seconds while the app is open there, with no refresh.
- **Catching up.** A phone that was closed or offline gets what it missed when the app opens,
  comes back to the front, reconnects, or when the trip is opened.
- **Completing offline.** A task completed with no connection is done on your phone at once
  and sent later. Tasks that others wait for are sent first.
- **Same rules for everyone.** A locked task stays locked on every phone, checked on the
  server too. If two people complete the same task, the first completion is kept.
- **Live participants.** Someone who joins appears on the code screen by themselves.
- A phone on a trip whose sharing was stopped turns it into a normal trip at its next sync,
  keeping its completions.

### v0.7.0: sharing a trip

- **Nickname** instead of an account: the app signs in anonymously the first time you share
  or join.
- **Share a trip**: a 6-character code valid for 10 minutes, **Copy**, **New code**, and
  the list of participants. At most 10 people per trip.
- **Join a trip** from My trips by typing the code. The trip is saved as a read-only copy.
- **Stop sharing**: everyone else loses access and the trip becomes a normal trip again.
- A clear message for a wrong or expired code, a full trip, being offline and a sleeping
  server.
- Limit: a joined trip is a copy. Completions don't show on the other phones yet (v0.8).

### v0.6.3: Trip Mode location fix

- Trip Mode shows "Location unavailable" as soon as the phone's location is turned off, and
  the distance comes back by itself when it is turned on again.

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
| **v0.9** | **Calendar and repeating trips.** Trips on a calendar, repeat daily, weekly or monthly, and a reminder on a trip's day. |
| **v0.10** | **History and backups.** A fuller History. Export trips to a file and import them again. |
| **v0.11** | **Road distance.** The suggested order and Trip Mode use distance along roads, falling back to straight-line distance offline. Still distance only, never time. |
| **v0.12** | **Settings and your data.** More settings, terms and privacy screens, **Delete all my data** (on the phone and on the sharing server), and an About screen. |
| **v1.0** | **First full release.** Welcome screens on first run, an accessibility pass, a release signing key. |
| **v1.1** | **iPhone.** The iPhone version already builds and is being tested on a real iPhone. |

Also planned, as small updates before v0.9:


When the app moves to a release signing key (v1.0), Android will need the old version removed
once before the new one installs. See [Install](install.md#why-the-apk-is-signed-with-a-debug-key).

## Not planned

- **Times, arrival estimates or trip durations.** GeoReminder shows distances only, by
  design.
- **Turn-by-turn navigation.** **Navigate** hands the place to your maps app.
- **Uploading your location**, including for shared trips.
- **Ads or tracking.**
