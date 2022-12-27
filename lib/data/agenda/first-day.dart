import 'package:event_guide/data/activity.dart';
import 'package:event_guide/data/agenda-item.dart';
import 'package:flutter/material.dart';

const List<AgendaItem> firstDay = [
  AgendaItem(
    startTime: TimeOfDay(hour: 10, minute: 00),
    name: 'Welcome',
    description: 'Just welcome',
    speaker: 'Welcomer Adam',
    place: 'Welcoming place',
    activity: Activity.conference,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 11, minute: 00),
    name: 'Conference',
    description: 'Just Conference',
    speaker: 'Conference Adam',
    place: 'Conferencing place',
    activity: Activity.conference,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 15, minute: 00),
    name: 'Lunch time',
    description: 'Just Lunch',
    speaker: 'Lunch Adam',
    place: 'Lunch place',
    activity: Activity.eating,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 17, minute: 00),
    name: 'Goodbye',
    description: 'Just Goodbye',
    speaker: 'Goodbye Adam',
    place: 'Goodbye place',
    activity: Activity.conference,
  ),
];
