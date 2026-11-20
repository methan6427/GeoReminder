# User guide

[Back to the README](../README.md) · This guide describes version 0.7.0.

1. [The idea in one minute](#the-idea-in-one-minute)
2. [The main screens](#the-main-screens)
3. [Trips](#trips)
4. [Tasks](#tasks)
5. [Tasks that wait for other tasks](#tasks-that-wait-for-other-tasks)
6. [Suggested order](#suggested-order)
7. [Picking a place](#picking-a-place)
8. [Frequent places](#frequent-places)
9. [The Map tab](#the-map-tab)
10. [Setting up reminders](#setting-up-reminders)
11. [Reminders](#reminders)
12. [Pausing a trip](#pausing-a-trip)
13. [Trip Mode](#trip-mode)
14. [Connecting to your car](#connecting-to-your-car)
15. [Sharing a trip](#sharing-a-trip)
16. [Finishing a trip and History](#finishing-a-trip-and-history)
17. [What is not in the app yet](#what-is-not-in-the-app-yet)

---

## The idea in one minute

You plan a **trip**: a group of **tasks** you want to do on one outing. Each task has a
**place**. When you reach that place, your phone reminds you, even if GeoReminder is closed.

Some tasks must happen in order: you can't hand in a form before you've printed it. You can
say a task **depends on** another one; it then stays **locked** until the other is done.

GeoReminder can **suggest an order** for the tasks that are left, and **Trip Mode** gives you a
large, simple screen for the road.

Example: *Saturday errands*

| Task | Place | Depends on |
|---|---|---|
| Print the form | Copy shop | |
| Get the ID copy | Municipality | |
| Hand in the form | University registry | Print the form, Get the ID copy |
| Buy medicine | Pharmacy | |

"Hand in the form" stays locked until both tasks it waits for are done. If you pass by the
registry early, the reminder says what to finish first.

## The main screens

The bar at the bottom has four tabs:

| Tab | What it shows |
|---|---|
| **Trips** | Your trips, in three tabs: Active, Upcoming and History. The button at the top joins a shared trip. |
| **Map** | The active trip's tasks as pins on a map. |
| **Calendar** | Not used yet. The calendar comes in a later version. |
| **Settings** | Reminders setup and Frequent places. |

The app follows your phone's light or dark theme.

## Trips

### Create a trip

1. On **My trips**, tap **New trip**.
2. Enter a **Title** (up to 40 characters), for example "Saturday errands".
3. The **date** is today unless you change it. Repeating a trip comes in a later version, so
   the form says "Does not repeat".
4. Add **Notes** if you like, then tap **Save**.

### Where trips are listed

| Tab | Trips in it |
|---|---|
| **Active** | Trips dated today or earlier that are not finished, and any trip you have started, whatever its date. A paused trip shows a **Paused** chip. |
| **Upcoming** | Trips planned for a later day. |
| **History** | Finished trips. They are read-only and show the day they were finished. |

Each trip card shows how many tasks are done, for example "2 of 5 done".

### A trip's status

A trip is always in one of four states:

| State | Meaning |
|---|---|
| **Planned** | Created, not started yet. |
| **Active** | Started. Its reminders work. |
| **Paused** | Started, then paused. Its task reminders are off (see [Pausing a trip](#pausing-a-trip)). |
| **Finished** | Done. Moves to History and can't change any more. |

Opening Trip Mode starts a planned trip, or resumes a paused one.

### Edit or delete a trip

Open the trip and tap the **More options** menu (top right): **Suggest order**, **Pause
trip** or **Resume trip**, **Edit** and **Delete**. Deleting asks first ("Delete this trip?") and can't be
undone.

## Tasks

### Add a task

1. Open a trip and tap **Add task**.
2. Enter the **Task** title, for example "Buy medicine".
3. Pick the **place** on the map (see [Picking a place](#picking-a-place)).
4. Set the **Reminder radius**: how close you must be for the reminder, from 50 to 500 m, in
   steps of 10 m. A circle on the map shows it while you change it. 100 to 200 m suits most
   shops; use more for big places such as a campus or a mall.
5. Choose **Remind me when I**:
   - **Arrive**: when you get to the place.
   - **Leave**: when you go away from it, for example "lock the car" or "take the receipt".
   - **Both**.
6. Optional: choose what it **Depends on** (see the next section), and add **Notes**.
7. Tap **Save task**.

Tap a task in the trip to open its sheet: **Complete**, **Edit task** and **Delete task**.

### Completing a task

Use **Complete** in the task's sheet, on a reminder, in Trip Mode or on the Map tab.
**Completing a task is final**; it can't be undone.

## Tasks that wait for other tasks

In the task form, **Depends on** lists the other tasks of the same trip. Pick the ones that
must be done first.

- A task that waits for an unfinished task is **locked**. It shows a lock and
  "Complete *task* first", and its sheet shows **Complete (locked)**, which can't complete it. **Go to *task*** jumps to the task it waits
  for.
- The first task you can do right now is marked **Next up**.
- The app never lets you make a loop (A waits for B, and B waits for A, directly or through
  other tasks). Choices that would make a loop are not offered, and a caption says how many
  were left out and why.
- If a task it waited for was deleted, the card says "Waits for a task that is missing".

## Suggested order

When a trip that isn't finished has at least two tasks left, tap **Suggest order** (at the
bottom of the trip, or in its **More options** menu).

- The app suggests a short visiting order by **straight-line distance** between the places.
  A task always comes after the tasks it waits for.
- Each row shows its number, what it waits for, and the distance to the next stop. The last
  row says "Last stop".
- **Use this order** saves it (done tasks stay at the top). **Keep my order** changes nothing.

The order is about distance only. GeoReminder never shows a time, an arrival time or a trip
duration. Road distance (instead of a straight line) comes in a later version.

## Picking a place

The place picker opens from the task form.

- The **pin stays in the middle**. Drag the map, or tap a spot, to move the place under it.
- **Search** finds an address with OpenStreetMap's search. It searches only when you press
  search, not while you type. Results near the pin come first; choosing one moves the pin
  there and fills in the address.
- Your **frequent places** appear as chips under the search field. Tap one to use it.
- **Save as frequent place** saves the place you are on for next time.
- A new place starts at the trip's first task, or at Birzeit University.
- Without internet the map may stay blank and search won't work, but you can still move the
  pin and save the place. A "You're offline" banner says so.

## Frequent places

**Settings > Frequent places** lists the places you go to often: home, work, your pharmacy.

- **Add place** opens the map to add one. You can rename or delete places here (deleting asks
  first).
- Two frequent places can't have the same name ("Home", "home" and " HOME " count as the same).
- A task keeps its own copy of the place. Renaming or deleting a frequent place later does not
  change tasks that already use it.

## The Map tab

The Map tab shows the active trip's tasks as pins, in the same colours as the task list:

| Pin | Meaning |
|---|---|
| Green tick | Done |
| Orange, with its name | Next up |
| Grey lock | Locked |
| Blue number | Open |

- Tasks not done yet show their reminder circle. The map frames all the pins.
- With several active trips, a menu at the top picks which one to show.
- Tap a pin to see the task below the map, with **Complete** and **Navigate**. Navigate opens
  the place in your phone's maps app (GeoReminder itself does no turn-by-turn navigation).
  Complete on a locked task says what to complete first, and **Go to** moves the map there.
- With no active trip, the map still shows, with "No active trip" and **Go to trips**.
- Your own position is not shown on the map yet.

The map is OpenStreetMap. "© OpenStreetMap contributors" in the corner opens its copyright
page.

## Setting up reminders

Reminders need a few permissions. **Settings > Reminders** walks you through them, one step
at a time:

1. **Location, all the time.** The phone first asks for "While using the app", then for "Allow
   all the time". Android and iOS only allow that order. "All the time" is what lets reminders
   work while the app is closed.
2. **Notifications**, with a preview of what a reminder looks like.
3. **Battery checklist**: set the app's battery use to **Unrestricted** and, on Samsung, keep
   GeoReminder out of "Sleeping apps". **Open phone settings** goes straight to the right page.
4. **Connect to your car** (optional): see [Connecting to your car](#connecting-to-your-car).

A permission you already gave is skipped. **Not now** moves to the next step. If you refused a
permission for good, the button opens the phone's settings instead, and the screen checks
again when you come back. Why each permission is needed: [Permissions and privacy](privacy.md).

## Reminders

- Arriving at a task's place shows **"You arrived at Pharmacy"** with the trip's name.
  Expanded, it says for example "Saturday errands · Task 1 of 5", with **Later** and
  **Complete**.
- A task set to remind on leaving says **"You left Pharmacy"** when you leave.
- **Each visit reminds once.** Staying at the place does not repeat it; leaving and coming
  back reminds again.
- **Complete** completes the task from the notification. **Later** just closes it.
- Tapping the reminder opens a **full-screen alert** with the task, the trip, **Complete** and
  **Later**. On Android it also opens over the lock screen; only the alert shows there, the
  rest of the app still needs the phone unlocked.

**Locked tasks.** Arriving at a locked task still reminds you: **"Locked: complete *task*
first"**, with only **Later**. The full-screen alert explains why and offers **Go to *task***.
If that task gets completed while the alert is open, the alert switches to Complete.

**Which trips remind.**
- Unfinished tasks of trips in the **Active** tab remind.
- Trips planned for a later day remind from the start of their day, even if you don't open the
  app. Before their day, reaching one of their places says nothing.
- Paused trips give one "resume" reminder instead (next section).
- Finished trips never remind. A reminder left over from a trip you have finished does nothing.

**How many places.** Android watches up to 100 places per app, iOS up to 20. If your trips
have more tasks than that, the ones you can do now come first, nearest first, then locked
ones, then paused trips, then trips planned for later days.

**After a restart.** Reminders come back by themselves after the phone restarts or the app
updates.

Reminders work offline: geofencing uses the phone's own location and needs no internet.

## Pausing a trip

Use **More options > Pause trip** on a started trip when you want a break from its reminders.

- A paused trip shows **Paused** on My trips, and its screen says "Paused. Arriving at a stop
  only reminds you to resume." with a **Resume** button.
- Its task reminders stop. Instead, reaching one of its places shows one reminder:
  **"Don't forget your trip: Saturday errands"**, "It is paused. You are near Pharmacy.", with
  **Later** and **Resume**. It comes once per arrival.
- **Resume** resumes the trip and opens it. **More options > Resume trip** does the same.

## Trip Mode

Trip Mode is one large screen made to be read at a glance, for example while someone drives.

**Open it** with the car button (**Trip Mode**) at the top of a trip's screen. This starts a
planned trip, or resumes a paused one.

- **Next stop** shows the next task you can do now, in the suggested order, with the
  straight-line distance from where you are ("1.2 km").
  - While the phone looks for your position it says "Finding your location". Without location
    it says "Location unavailable" and still works.
  - A locked stop says what it waits for.
- **Complete** completes the stop and moves to the next one.
- When every stop is done it says **All stops done**. Finish the trip from the trip's screen.
- **End Trip Mode** closes the screen. The trip stays active.

**Spoken prompts.** Trip Mode speaks through the phone's own voice:

- a new next stop with its distance: "Next stop: Pharmacy, 300 metres."
- reaching a stop, once: "You are at Pharmacy."
- a locked stop, and what it waits for
- the end of the trip: "All stops done."

The switch at the top turns the voice off until you leave Trip Mode. When the phone is
connected to the car, the voice plays through the car's speakers like any phone audio.

Please don't use the phone while driving. Trip Mode is designed so that a passenger, or the
voice, can do the work.

## Connecting to your car

Android only. In **Settings > Reminders**, the optional step **Connect to your car** asks for
Android's "Nearby devices" permission. GeoReminder uses it only to notice that your car
connected, never to look for other devices. **Skip** keeps everything else working.

When your phone connects to the car by Bluetooth, GeoReminder asks
**"Start Trip Mode for Saturday errands?"** with **Not now** and **Start**.

- It offers the trip under way (active or paused), otherwise a trip planned for today, and only
  one with a task still to do.
- Each trip is offered once while the app is open; **Not now** is not asked again.
- Nothing is offered while Trip Mode is already open, and the question closes by itself if the
  car disconnects.
- Trip Mode shows a car icon while the car is connected.

The offer works while GeoReminder is running (in front or in the background). It does not
start a closed app. See [Troubleshooting](troubleshooting.md#my-car-is-not-noticed) if your car
isn't noticed.

## Sharing a trip

Sharing needs an internet connection. Everything else in the app keeps working without one.

### Your nickname

The first time you share or join a trip, the app asks you to **Choose a nickname** (up to 30
characters). It is what the other people on the trip see. There is no account, email or
password: behind the nickname the app signs in anonymously, and it remembers you after a
restart.

### Share one of your trips

1. Open the trip and tap the **share** button at the top (a person with a plus).
2. The screen explains what sharing does. Tap **Share**.
3. You get a **Trip code** of six letters and digits, for example `6F4BFA`, with **Valid for**
   counting down from 10 minutes.
   - **Copy** copies it so you can send it in a message.
   - **New code** makes a fresh one, for example when it has run out ("Expired. Make a new
     code.").
4. **Participants** lists everyone on the trip, owner first, and marks you and the owner.
   Tap **Refresh participants** (top right) to see who has joined since.

A trip can have up to **10 people**, you included.

**A shared trip can't be edited.** After sharing, the trip has no **Add task** and its tasks
have no **Edit**, because the copy the others got does not change. Stop sharing to edit it
again. Tap the share button again at any time to see the code and the participants.

### Join someone's trip

1. Ask the person who shared it for the code.
2. On **My trips**, tap the **Join a trip** button at the top.
3. Type the code into the six boxes.
4. The trip is saved on your phone, marked **Shared**.

What can go wrong, and what the app says:

| Message | What to do |
|---|---|
| "That code is wrong or has expired." | Check the code, or ask for a new one. Codes work for 10 minutes. |
| "This trip is full. A shared trip has room for 10 people." | A shared trip holds at most 10 people. |
| You're offline | Connect and try again. Nothing changed. |
| "The server is waking up" | Try again in a minute (see [Troubleshooting](troubleshooting.md#sharing-says-the-server-is-waking-up)). |

### Stop sharing

On the code screen, **Stop sharing** at the bottom asks first and names who will lose access.

- After it, the others lose access, the old code stops working, and the trip stays on your
  phone as a normal trip you can edit again, with what is already done.
- You can share it again later; it gets a new code.
- If stopping fails (offline, server waking up), the trip stays shared and you can try again.
- Only the person who shared the trip can stop sharing it.

### What sharing does not do yet (v0.7.0)

- **Completions are not shared yet.** A joined trip is a copy taken when you join. Completing
  a task on one phone does not show on the others, and the participants list only changes
  when you refresh it. Live completions and a live participants list come in v0.8.
- A joined phone doesn't notice when the owner stops sharing.
- Nobody can leave a trip or remove one person. Stop sharing removes everyone.

Your position is never uploaded, shared trips included. What is uploaded is listed in
[Permissions and privacy](privacy.md#sharing-a-trip).

## Finishing a trip and History

When every task is done, **Finish trip** appears on the trip's screen. Tapping it shows "Trip
finished. Find it in History". A finished trip is read-only: it can't be edited, its tasks
can't change, and its reminders stop.

## What is not in the app yet

These are being built now; see the [roadmap](roadmap.md):

- Seeing each other's completions on a shared trip live, completing a shared task offline,
  and leaving a shared trip.
- The calendar and repeating trips.
- History details, and moving trips to another phone with a file.
- Road distance in the suggested order.
- Your own position on the map.
- Settings for terms, privacy, deleting all data, and an about page.
- The iPhone download.
