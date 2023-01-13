import 'package:flutter/material.dart';

import '../activity.dart';
import '../agenda-item.dart';

const List<AgendaItem> secondDay = [
  AgendaItem(
    startTime: TimeOfDay(hour: 8, minute: 30),
    name: 'Warm-up',
    description: 'Kto rano wstaje temu Pan Bóg daje',
    place: 'Gardens',
    activity: Activity.movement,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 9, minute: 00),
    name: 'Breakfast',
    description: 'Omlet ze świeżymi owocami',
    place: 'Main hall',
    activity: Activity.eating,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 10, minute: 00),
    name: 'Very interesting conference',
    description: 'very + interesting + things',
    speaker: 'mgr inż Janusz Rosół',
    place: 'Conference hall',
    activity: Activity.conference,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 14, minute: 00),
    name: 'Lunch time',
    description: 'Ryba pieczona + frytki',
    place: 'Main hall',
    activity: Activity.eating,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 18, minute: 00),
    name: 'Mini-golf',
    description: 'Konkurs o puchar eventu',
    place: 'Goodbye place',
    activity: Activity.event,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 20, minute: 30),
    name: 'Dinner',
    description: 'Szwedzki stół',
    place: 'Main hall',
    activity: Activity.eating,
  ),
];
