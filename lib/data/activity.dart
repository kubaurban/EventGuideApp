import 'dart:ui';

enum Activity {
  conference('Conference', Color.fromARGB(210, 142, 255, 127)),
  movement('Movement', Color.fromARGB(166, 255, 60, 17)),
  eating('Eating', Color.fromARGB(125, 250, 237, 0)),
  groups('Groups', Color.fromARGB(210, 0, 183, 250)),
  event('Event', Color.fromARGB(210, 237, 0, 250));

  final String description;
  final Color color;
  const Activity(this.description, this.color);
}
