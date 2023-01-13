# Event managing app

## Project description

Project's subject is an application for managing one particular event during its lifetime. It should also present some functionalities before event beginning but a core of application functionality will cover only event's lifetime.

Major purpose of the application is to provide event participants with:

- static\* agenda with brief information of each agenda item:
  - speaker,
  - concise description,
  - duration (start and end time),
  - place,
  - type of activity.

- each event day having a separate bookmark with its agenda

- real time tracking of agenda items (the application generates notification before\*\*\*\* each\*\* agenda item),

- staying up-to-date\*\*\* with organizers' announcements (placed by them during the event on an intended board in the application)

- see and download any earlier provided by organizers documents, texts or other attachments related to the event (e.g. event regulations, list of special guests with their photos and concise description, event description or aim, ...)

## Screens

App consists of following screens:

- Home screen - allows user to sign in and if user is signed in it displays basic info about event

- First/Second/Third day - each screen presents event agenda for corresponding day

- Announcements - allows users to place announcements and see them on a chat-looking table

App also has left nav bar to navigate between these screens.

## User stories

As a user, I can...

- sign in.

- see event agenda for each event day.

- see agenda items with properties mentioned in Project description.

- be notified of an approaching activity.

- post on announcement board.

- see real time announcements on intended board.

## Integrations

App uses Firebase for user authentication and Firestore for announcements storage. Thus, app has offline support and synchronization between devices. Moreover, app uses Firebase Cloud Messaging for push notifications.

## Database schema

Database schema is very simple. It stores announcements in messages collection of type:\
{\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;author: string;\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;content: string;\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;timestamp: Date;\
}

## Future development

- enable user to:

  - be notified of a new announcement on the announcement board.

  - set how much time before activity start should I be notified of it.
  
  - subscribe for notifications to a specific event.

- add authorization for organizers and allow them to:

  - change agenda items' start and end time during event duration.

  - exclusively add announcements on a board (?).

- notifications logic improvement:

  - automatic generation instead of manual scheduling.

  - goto specific event on notification click.
  
  - UI improvement.
