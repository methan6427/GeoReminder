<p align="center">
  <img src="assets/logo.png" alt="GeoReminder logo" width="120">
</p>

<h1 align="center">GeoReminder</h1>

<p align="center">
  Reminders that fire at places, not at times.<br>
  Group errands into trips, say which task must come first, and let your phone remind you when you get there.
</p>

<p align="center">
  <a href="https://github.com/methan6427/GeoReminder/releases/latest"><b>Download the latest Android APK</b></a>
  &nbsp;·&nbsp;
  <a href="docs/install.md">How to install</a>
  &nbsp;·&nbsp;
  <a href="docs/user-guide.md">User guide</a>
</p>

---

## What it does

- **Trips of tasks.** A trip is a group of errands for one outing, such as "Saturday errands":
  pharmacy, bank, groceries. Each task has a place on the map and a reminder radius.
- **Reminders at the place.** When you arrive at (or leave) a task's place, the phone tells
  you, even when the app is closed. You can complete the task straight from the notification.
- **Tasks that wait for others.** "Pick up the parcel" can wait for "Get the ID copy". A task
  stays locked until the tasks it waits for are done, and its reminder tells you what comes
  first.
- **A suggested visiting order.** The app suggests a short order for the tasks left, by
  distance, and always keeps every task after the tasks it waits for.
- **Trip Mode for driving.** One large screen with the next stop and how far away it is, with
  spoken prompts. It can offer itself when your phone connects to the car by Bluetooth.
- **Share a trip and do it together.** Give family or friends a 6-character code and they get
  the trip on their phone. When anyone completes a task, it shows as done on every phone
  within a few seconds, with who completed it. No account, email or password: you only pick a
  nickname.
- **Private by design.** Trips, tasks and places are stored on your phone. Only a trip you
  choose to share is uploaded, and your location is never uploaded.

GeoReminder shows distances only. It never estimates a time, an arrival time or a trip
duration.

## Download

| | |
|---|---|
| **Latest version** | See [Releases](https://github.com/methan6427/GeoReminder/releases/latest). Download the file `georeminder-v<version>.apk`. |
| **Android** | Android 7.0 or newer, with Google Play services (needed for the phone's geofencing). |
| **iPhone** | Not available for download yet. See [Install on iPhone](docs/install.md#iphone). |

Full steps, including how to allow the install and how to update: **[docs/install.md](docs/install.md)**.

## Documentation

| Page | What it covers |
|---|---|
| [Install](docs/install.md) | Download, install, update and remove the app. |
| [User guide](docs/user-guide.md) | Every screen: trips, tasks, waiting tasks, suggested order, map, reminders, pause, Trip Mode, sharing, settings. |
| [Permissions and privacy](docs/privacy.md) | Each permission the app asks for and why, what is stored and what goes over the internet. |
| [Troubleshooting](docs/troubleshooting.md) | Late or missing reminders, battery settings, the car not being noticed, sharing problems, and other common questions. |
| [How it works](docs/how-it-works.md) | Technical overview: architecture, trip states, the waiting rule, the order algorithm, geofencing and storage. |
| [Versions and roadmap](docs/roadmap.md) | What each version added and what is coming next. |

## Status

GeoReminder is under active development. The current version (**v0.8.6**) works fully on one
phone (trips, tasks, map, reminders, Trip Mode) and shares a trip with other phones by a join
code. On a shared trip, completions show on every phone live, and a task completed with no
connection is sent when the phone is back online. Each done task shows who completed it.
The app offers its permission setup on the first launch and has a light and a dark mode.
The map shows where you are, with the direction you are facing, and every active trip at
once, each in its own colour. The whole app is available in Arabic, right to left, and Trip Mode speaks
Arabic too, with a choice of voices.
Next come a calendar, repeating trips and road distance. See the [roadmap](docs/roadmap.md).

Found a problem? [Open an issue](https://github.com/methan6427/GeoReminder/issues/new/choose)
with your phone model, Android version and app version (shown on the Releases page you
downloaded from).

## About

GeoReminder is a graduation project at Birzeit University, Department of Computer Science.
This repository holds the documentation and the app downloads. The source code is kept in a
separate private repository; every release here is built and published automatically from it.

The app is free to download and use. Map data © [OpenStreetMap contributors](https://www.openstreetmap.org/copyright).
