import 'dart:ui';

enum Activity {
  conference('Conference', Color.fromARGB(99, 4, 105, 46)),
  movement('Movement', Color.fromARGB(160, 219, 46, 7)),
  eating('Eating', Color.fromARGB(173, 255, 199, 79)),
  groups('Groups', Color.fromARGB(176, 51, 168, 211)),
  event('Event', Color.fromARGB(169, 241, 104, 24));

  final String description;
  final Color color;
  const Activity(this.description, this.color);
}
