# Permissions and privacy

[Back to the README](../README.md)

- [The short version](#the-short-version)
- [What is stored, and where](#what-is-stored-and-where)
- [What goes over the internet](#what-goes-over-the-internet)
- [Permissions](#permissions)
- [Removing your data](#removing-your-data)
- [Sharing, when it comes](#sharing-when-it-comes)

## The short version

- Your trips, tasks and places stay on your phone. There is no account and no sign-in.
- Your location is used on the phone only. It is never uploaded or shared, and no history of
  it is kept.
- The app goes on the internet for two things only: map pictures and address searches,
  both from OpenStreetMap.
- There are no ads, no analytics and no crash reporting.

## What is stored, and where

Everything is kept in the app's private storage on the phone. Other apps can't read it.

| What | Where |
|---|---|
| Trips and their tasks (title, date, status, places, radius, notes, which task waits for which, what is done) | `trips.json`, with a backup copy `trips.json.bak` |
| Frequent places (name and position) | `places.json`, with a backup copy |
| The places the phone is currently watching, and the one position where the phone last reported arriving or leaving | `regions.json`, so the places can be watched again after a restart and the nearest tasks are picked first |
| Which reminders were already shown for the current visit, so a stay does not repeat them | `reminder_log.json` |

Only that one last position is kept, and it is replaced each time. There is no history of
where you have been. Trip Mode reads your position while it is open to show the distance to
the next stop, and does not save it.

## What goes over the internet

| When | Sent to | What is sent |
|---|---|---|
| A map is on screen | `tile.openstreetmap.org` | Requests for the map squares in view (which part of the map, at which zoom). Like any website, the server sees your IP address. |
| You press search in the place picker | `nominatim.openstreetmap.org` | The text you searched for, and a box of about 100 km across, centred on the pin, so nearby results come first. Nothing is sent while you type. |
| You tap **Navigate** | your phone's maps app | The task's position is handed to that app. What it does with it is up to that app. |

Nothing else leaves the phone. Trips, tasks, notes, frequent places and your position are
never sent anywhere. Reminders, Trip Mode, the suggested order and the spoken prompts all
work with no connection.

OpenStreetMap's own privacy policy covers the map and search servers:
<https://osmfoundation.org/wiki/Privacy_Policy>.

## Permissions

Android lists these on the app's page in **Settings > Apps > GeoReminder > Permissions**.
The ones marked "asked" show a prompt. You can say no to any of them, and the rest of the
app keeps working.

| Permission | Asked? | Why |
|---|---|---|
| **Location: while using the app** | Asked in the reminder setup | Needed before Android allows the next one. Also used by Trip Mode for the distance to the next stop. |
| **Location: all the time** | Asked in the reminder setup | The phone's geofencing needs it to notice you arrive at a task's place while the app is closed. Without it there are no reminders; everything else works. |
| **Notifications** | Asked in the reminder setup (Android 13 and later) | To show the reminders. |
| **Ignore battery optimisation** | The setup opens the phone's battery settings | So Android does not hold reminders back for long to save battery. Optional. |
| **Nearby devices** (Bluetooth connect) | Asked in the optional **Connect to your car** step (Android 12 and later) | Only to notice that the phone connected to your car, so the app can offer Trip Mode. It never searches for, finds or connects to devices. Android's own text for this permission mentions finding devices; the app does not do that. |
| **Full-screen alerts** | Not asked; some Android 14+ phones list it under special app access | To open the arrival alert over the lock screen. Without it, the reminder shows as a normal notification and tapping it opens the alert. |
| Internet | Not asked | Map pictures and address search (see above). |
| Run at start-up | Not asked | To watch the reminder places again after the phone restarts or the app is updated, without opening the app. |
| Foreground service (location) and keep awake | Not asked | Used briefly by the geofencing when a reminder arrives, so it can be handled before Android stops the app. |
| Bluetooth (Android 11 and older) | Not asked | The older name of "Nearby devices" on those versions. |

## Removing your data

- **One trip:** open it, **More options > Delete**.
- **One frequent place:** **Settings > Frequent places**, then delete it.
- **Everything:** uninstall the app (see [Install](install.md#removing-the-app)). This also
  stops all reminders.
- If Android's own backup to your Google account is on, Android may keep a copy of the
  app's files in your Google account and restore them when you install the app again. You
  control that in the phone's **Settings > Google > Backup**. GeoReminder does not run any
  backup of its own.

## Sharing, when it comes

Sharing a trip with other people is being built (see the [roadmap](roadmap.md)). It will be
the first feature that sends trip data off the phone, and only for trips you choose to
share. This page will be updated in the release that adds it. What is planned:

- No email, phone number or password. The app signs in anonymously and you pick a nickname.
- A shared trip is stored on a server so the people in it see the same tasks.
- Your position will still not be uploaded.
- You will be able to stop sharing at any time.
