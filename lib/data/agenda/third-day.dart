import 'package:flutter/material.dart';

import '../activity.dart';
import '../agenda-item.dart';

const List<AgendaItem> thirdDay = [
  AgendaItem(
    startTime: TimeOfDay(hour: 8, minute: 00),
    name: 'Warm-up',
    description: 'Kto rano wstaje temu Pan Bóg daje',
    place: 'Gardens',
    activity: Activity.movement,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 8, minute: 30),
    name: 'Breakfast',
    description: 'Szwedzki stół',
    place: 'Main hall',
    activity: Activity.eating,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 9, minute: 30),
    name: 'Conference',
    description: 'Just to good to be true...',
    speaker: 'prof dr hab nadzw prof uczeli Waldemar Kolendra',
    place: 'Conference hall',
    activity: Activity.conference,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 11, minute: 00),
    name: 'Guest conference',
    description: 'Exclusively for our event - The Wise Man',
    speaker: 'The Wise Man - dr Szymon Mądry',
    place: 'Conference hall',
    activity: Activity.conference,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 14, minute: 00),
    name: 'Fun with flags',
    description: 'Integration - scavenger hunt',
    place: 'Gardens',
    activity: Activity.groups,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 16, minute: 00),
    name: 'Lunch time',
    description: 'Zupa pomidorowa + gołąbki',
    place: 'Main hall',
    activity: Activity.eating,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 19, minute: 00),
    name: 'Event closing',
    description: 'Just Goodbye',
    speaker: 'Event team',
    place: 'Gardens',
    activity: Activity.conference,
  ),
];
