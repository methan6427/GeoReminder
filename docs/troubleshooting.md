# Troubleshooting

[Back to the README](../README.md)

- [I get no reminders at all](#i-get-no-reminders-at-all)
- [Reminders come late](#reminders-come-late)
- [Reminders stop after a while](#reminders-stop-after-a-while)
- [The alert does not open over the lock screen](#the-alert-does-not-open-over-the-lock-screen)
- [Some tasks never remind](#some-tasks-never-remind)
- [A trip planned for today does not remind](#a-trip-planned-for-today-does-not-remind)
- [No reminder on a trip's day](#no-reminder-on-a-trips-day)
- [I can't complete a task](#i-cant-complete-a-task)
- [My car is not noticed](#my-car-is-not-noticed)
- [No blue dot on the map](#no-blue-dot-on-the-map)
- [Trip Mode doesn't speak Arabic](#trip-mode-doesnt-speak-arabic)
- [Trip Mode says "Location unavailable"](#trip-mode-says-location-unavailable)
- [The map is blank or grey](#the-map-is-blank-or-grey)
- [Address search finds nothing](#address-search-finds-nothing)
- [Android won't install the APK](#android-wont-install-the-apk)
- [Reporting a problem](#reporting-a-problem)

## I get no reminders at all

Open **Settings > Reminders** and check every line of the checklist. Reminders need all of
these:

1. **Location: Allow all the time.** "Only while using the app" is not enough. In the
   phone's settings: **Apps > GeoReminder > Permissions > Location > Allow all the time**.
2. **Notifications allowed** for GeoReminder.
3. **Location turned on** for the phone (the quick settings tile).
4. **Google Play services** installed and up to date. The phone's geofencing comes from it.
   Phones without the Play Store (for example many Huawei phones) can't give reminders.
5. The trip must be **active** (or planned for today), not paused or finished, and the task
   not done yet.

After changing any of these, open the app once. It sets the reminder places up again.

## Reminders come late

Android may hold a reminder back for **2 to 3 minutes** after you arrive. This is normal.
The phone checks your position less often to save battery. A few things make it slower:

- **Battery saver** on. Turn it off for the trip, or set GeoReminder's battery use to
  **Unrestricted**: **Apps > GeoReminder > Battery > Unrestricted**.
- A very small **radius**. Phone location can be 20 to 50 m off, more inside buildings. A
  radius of 100 m or more is reliable; 50 m may only fire once you are well inside.
- Walking past quickly. If you leave before the phone notices, there may be no reminder.
- **Wi-Fi turned off.** Phones use nearby Wi-Fi to find their position cheaply. Leaving
  Wi-Fi on (it does not need to be connected) gives quicker reminders.

## Reminders stop after a while

Some phones put apps to sleep after a few days without use, and then drop their reminders.

- **Samsung:** **Settings > Battery > Background usage limits**. Make sure GeoReminder is
  not in **Sleeping apps** or **Deep sleeping apps**, and add it to **Never sleeping apps**.
- **Xiaomi, Oppo, Vivo, OnePlus, Huawei:** look for **Autostart** and allow it, and set
  battery to **No restrictions**. <https://dontkillmyapp.com> has steps for each brand.
- All Android phones: **Apps > GeoReminder > Battery > Unrestricted**.

The reminder setup's checklist has an **Open phone settings** button that goes to the right
place on most phones.

## The alert does not open over the lock screen

On Android 14 and later, the phone may not let apps open a full-screen alert by
themselves. The reminder then shows as a normal notification at the top of the screen.
Tapping it opens the alert. Nothing is lost.

To allow it: **Settings > Apps > Special app access > Full screen notifications** (the name
differs by phone), then turn it on for GeoReminder.

## Some tasks never remind

- **Too many tasks.** Android watches at most **100 places** per app (iPhone: 20). With
  more tasks than that across all your trips, the app picks: tasks you can do now first,
  nearest first, then locked tasks, then paused trips, then trips planned for a later day.
  The rest wait until a place is freed. Finishing or deleting old trips frees places.
- **Arrive, Leave or Both.** A task set to **Leave** says nothing on arrival. Check
  **Remind me when I** in the task.
- **Already there.** If you were already inside the place when the trip started or its day
  began, the phone reminds the next time you arrive, not right away.
- **One reminder per visit.** Staying at the place does not repeat the reminder. Leave and
  come back to get it again.

## A trip planned for today does not remind

A trip planned for a day reminds from the start of that day. Check the trip's date: a trip
dated tomorrow shows under **Upcoming** and says nothing yet. A **paused** trip gives only one
"Don't forget your trip" reminder per arrival, not its task reminders. Resume it from its
**More options** menu.

## No reminder on a trip's day

- The trip-day reminder comes at the trip's time, or at 8:00 when it has none. A time that
  had already passed when you saved the trip gives no reminder that day.
- Check that the **Trip days** channel is on: phone **Settings > Apps > GeoReminder >
  Notifications**.
- Android may hold it back a few minutes while the phone is idle. Battery saver makes this
  longer; see [Reminders come late](#reminders-come-late).
- Finished trips and trips with no date never remind.
- After changing time zone, open the app once so the reminders follow it.

## I can't complete a task

- **Complete (locked):** the task waits for another task. Complete that one first. The
  task's card says which one: "Complete *task* first".
- **Finished trip:** a trip in **History** can't change. **Complete** on an old reminder of a
  finished trip does nothing, by design.
- **Completing is final.** A done task can't be marked not done again.

## My car is not noticed

Trip Mode offers itself when the phone connects to the car by Bluetooth. If it does not:

1. **The permission.** The car step in **Settings > Reminders** must have **Nearby devices**
   allowed (Android 12 and later). Check **Apps > GeoReminder > Permissions > Nearby
   devices**.
2. **The app must be running**, open or in the background. A closed app (swiped away, or
   not opened since the phone started) does not notice the car.
3. **The kind of device.** The app recognises a car by the kind of Bluetooth device it
   reports: car audio or hands-free. Some car kits, adapters and FM transmitters report
   themselves as headphones or speakers, and then they are not noticed. Open Trip Mode by
   hand with the car button on the trip's screen.
4. **A trip to offer.** It offers the trip under way (active or paused), or else a trip
   planned for today, and only one that has a task left to do.
5. **Already answered.** Each trip is offered once while the app is open. If you tapped
   **Not now**, it is not asked again until the app is restarted.
6. Trip Mode already open: nothing is offered.

## No blue dot on the map

- The button at the bottom right shows a crossed-out icon when location is off or not
  allowed. Turn on location for the phone and allow it for GeoReminder
  (Settings > Reminders).
- With Google Location Accuracy off, Android asks to turn it on when the Map tab opens.
  After **No thanks** the map has no dot; pressing the button asks again.
- Indoors the first position can take a while; the button says it is still looking.
- If the cone points the wrong way, move the phone in a figure eight away from metal and
  magnets to calibrate the compass.

## Trip Mode doesn't speak Arabic

- Trip Mode speaks the app's language. Check **Settings > Language**.
- The phone needs an Arabic voice. Google's engine may need it downloaded first: phone
  **Settings > Text-to-speech** (the place differs by phone), then Google's settings >
  Install voice data > Arabic. **Settings > Trip Mode voice** says when none is installed.
- A picked voice that was removed from the phone falls back to the default.

## Trip Mode says "Location unavailable"

Trip Mode still works without your position; it just can't show the distance.

- Allow location for GeoReminder and turn on location for the phone.
- Google may ask to turn on **Location Accuracy** when Trip Mode opens. **No thanks** is
  fine; the distance may just take longer to appear indoors.
- "Finding your location" for a long time usually means you are indoors. It updates once the
  phone gets a fix.

## The map is blank or grey

The map pictures come from OpenStreetMap over the internet. Without a connection the map is
grey and the app shows "You're offline". Everything else works offline: you can still move
the pin and save a place in the place picker, and reminders still come.

## Address search finds nothing

- Search only runs when you press search on the keyboard, not while you type.
- Try a shorter text: a street or place name and the town ("Birzeit University", "Main St,
  Ramallah").
- Results near the pin come first. Move the pin closer to the area, then search again.
- Search needs the internet. Without it, drag the map to the place instead.

## Sharing says I'm offline

Sharing, joining and stopping sharing need an internet connection; nothing changes on the
phone or the server until they work. Check mobile data or Wi-Fi and tap **Try again**. The
rest of the app works offline.

## Sharing says the server is waking up

The sharing server is on a free plan that goes to sleep after about a week without use. The
first request after that can fail with "The server is waking up". Wait a minute and try
again. If it keeps failing for more than a few minutes, [open an issue](https://github.com/methan6427/GeoReminder/issues/new/choose).

## The join code doesn't work

- "That code is wrong or has expired.": a code works for **10 minutes**. Ask the owner to tap
  **New code** and send it again.
- Check the six letters and digits.
- "This trip is full.": a shared trip holds at most 10 people.

## A task I completed doesn't show on the other phone

A completion normally shows on the other phones within a few seconds.

- **The other phone must have the app open** to see it live. A phone where the app was
  closed catches up when the app opens, or when you open the trip.
- **Both phones need internet.** A task completed offline shows as done on that phone at
  once and is sent when the connection is back (or when the app is opened again). There is
  no "waiting to send" sign yet.
- On the code screen, a new participant appears by themselves. If one is missing after a
  connection drop, tap **Refresh participants**.
- A done task with no **Done by** name: the phone has not loaded that person's nickname yet.
  Opening the trip with internet loads it.
- Still missing after opening the trip on both phones with internet? [Open an issue](https://github.com/methan6427/GeoReminder/issues/new/choose).

## A shared trip says "Sharing has stopped"

The owner stopped sharing it. The trip stays on your phone as a normal trip of your own, with
what was done, and you can edit it. Ask the owner for a new code to share again.

## I can't edit a shared trip

A shared trip is read-only, so everyone's copy stays the same. The owner can **Stop
sharing** on the code screen to edit it again.

## Android won't install the APK

- **"Install blocked" / "For your security…":** allow installs for the browser or file
  manager you opened it from. See [Install](install.md#android).
- **Play Protect warning:** choose **Install anyway**. The app is not on the Play Store yet.
- **"App not installed" when updating:** you are installing an older version over a newer
  one, or the file did not download fully. Download the latest release again.
- **"There was a problem parsing the package":** your Android is older than 7.0.

## Reporting a problem

[Open an issue](https://github.com/methan6427/GeoReminder/issues/new/choose) and include:

- phone model and Android version
- app version (the release you downloaded, for example v0.9.0)
- what you did, what you expected and what happened
- for reminders: the task's radius, **Arrive/Leave/Both**, and whether battery was set to
  Unrestricted

Please don't post your trips' real addresses in a public issue.
