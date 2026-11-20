# Permissions and privacy

[Back to the README](../README.md)

- [The short version](#the-short-version)
- [What is stored, and where](#what-is-stored-and-where)
- [What goes over the internet](#what-goes-over-the-internet)
- [Permissions](#permissions)
- [Removing your data](#removing-your-data)
- [Sharing a trip](#sharing-a-trip)

## The short version

- Your trips, tasks and places stay on your phone, unless you share a trip. There is no
  account, email or password.
- Sharing uploads only the trip you share: its title, its tasks and the nicknames of the
  people on it.
- Your location is used on the phone only. It is never uploaded or shared, shared trips
  included, and no history of it is kept.
- Otherwise the app goes on the internet for two things only: map pictures and address
  searches, both from OpenStreetMap.
- There are no ads, no analytics and no crash reporting.

## What is stored, and where

Everything is kept in the app's private storage on the phone. Other apps can't read it.

| What | Where |
|---|---|
| Trips and their tasks (title, date, status, places, radius, notes, which task waits for which, what is done; on a shared trip also who completed each task and the nicknames of the people on it) | `trips.json`, with a backup copy `trips.json.bak` |
| Frequent places (name and position) | `places.json`, with a backup copy |
| The places the phone is currently watching, and the one position where the phone last reported arriving or leaving | `regions.json`, so the places can be watched again after a restart and the nearest tasks are picked first |
| Which reminders were already shown for the current visit, so a stay does not repeat them | `reminder_log.json` |
| Your nickname and the anonymous sign-in, once you share or join a trip | the app's private settings |
| Your light/dark choice, and whether the first-launch setup was already offered | `settings.json` |

Only that one last position is kept, and it is replaced each time. There is no history of
where you have been. Trip Mode reads your position while it is open to show the distance to
the next stop, and does not save it.

## What goes over the internet

| When | Sent to | What is sent |
|---|---|---|
| A map is on screen | `tile.openstreetmap.org` | Requests for the map squares in view (which part of the map, at which zoom). Like any website, the server sees your IP address. |
| You press search in the place picker | `nominatim.openstreetmap.org` | The text you searched for, and a box of about 100 km across, centred on the pin, so nearby results come first. Nothing is sent while you type. |
| You tap **Navigate** | your phone's maps app | The task's position is handed to that app. What it does with it is up to that app. |
| You share or join a trip | the GeoReminder sharing server (Supabase) | See [Sharing a trip](#sharing-a-trip). |

Nothing else leaves the phone. Trips you have not shared, frequent places and your position
are never sent anywhere. Reminders, Trip Mode, the suggested order and the spoken prompts all
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
| Internet | Not asked | Map pictures, address search and sharing (see above). |
| Run at start-up | Not asked | To watch the reminder places again after the phone restarts or the app is updated, without opening the app. |
| Foreground service (location) and keep awake | Not asked | Used briefly by the geofencing when a reminder arrives, so it can be handled before Android stops the app. |
| Bluetooth (Android 11 and older) | Not asked | The older name of "Nearby devices" on those versions. |

## Removing your data

- **One trip:** open it, **More options > Delete**. For a trip you share, stop sharing first:
  that removes it from the sharing server.
- **One frequent place:** **Settings > Frequent places**, then delete it.
- **Everything:** uninstall the app (see [Install](install.md#removing-the-app)). This also
  stops all reminders.
- If Android's own backup to your Google account is on, Android may keep a copy of the
  app's files in your Google account and restore them when you install the app again. You
  control that in the phone's **Settings > Google > Backup**. GeoReminder does not run any
  backup of its own.

## Sharing a trip

Sharing (from v0.7.0) is the only feature that sends trip data off the phone, and only for a
trip you choose to share or join.

**Sign-in.** The first time you share or join, the app signs in **anonymously** to the
sharing server and asks for a nickname. No email, phone number or password is asked for.
The anonymous account belongs to this install of the app.

**What is uploaded when you share a trip:**
- the trip's title
- its tasks: title, place (name and position), reminder radius, arrive or leave, notes, which
  task waits for which, and what is done
- the nickname of everyone on the trip, and who shared it

**What is uploaded when you complete a task on a shared trip:** that the task is done, which
participant completed it, and when. A completion made offline is kept on the phone and
uploaded when the connection is back.

**What is never uploaded:** your position, your other trips, your frequent places.

**Who can see it.** Only the people who joined with the code. The server's rules refuse
anyone who is not on the trip, and live updates are sent only to people on the trip. A code works for 10 minutes, and a trip holds at most 10
people.

**Stopping.** **Stop sharing** deletes the trip from the server and removes everyone from it.
The trip stays on your phone, and on the others' phones as their own normal trip.

**Where.** The sharing server runs on [Supabase](https://supabase.com) (a hosted Postgres
database). Its privacy policy: <https://supabase.com/privacy>.

**Not there yet:** a way to delete your nickname and anonymous account from the server
(planned for v0.12, **Delete all my data**). Until then, stopping sharing removes the trip,
and uninstalling removes everything on the phone.
