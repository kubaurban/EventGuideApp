import 'package:event_guide/data/activity.dart';
import 'package:event_guide/data/agenda-item.dart';
import 'package:flutter/material.dart';

const List<AgendaItem> firstDay = [
  AgendaItem(
    startTime: TimeOfDay(hour: 10, minute: 00),
    name: 'Welcome',
    description: 'Just welcome',
    speaker: 'dr Ewa Maciejewska',
    place: 'Gardens',
    activity: Activity.conference,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 11, minute: 00),
    name: 'So addictive conference',
    description: 'some + tough + stuff',
    speaker: 'inż Adam Nowak',
    place: 'Conference hall',
    activity: Activity.conference,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 15, minute: 00),
    name: 'Lunch time',
    description: 'Schabowy + ziemniaki + surówka',
    place: 'Main hall',
    activity: Activity.eating,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 17, minute: 00),
    name: 'Film',
    description: 'Titanic',
    place: 'Theater',
    activity: Activity.event,
  ),
  AgendaItem(
    startTime: TimeOfDay(hour: 20, minute: 00),
    name: 'Dinner',
    description: 'Tosty',
    place: 'Main hall',
    activity: Activity.conference,
  ),
];
