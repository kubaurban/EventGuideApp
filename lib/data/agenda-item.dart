import 'package:event_guide/data/activity.dart';
import 'package:flutter/material.dart';

class AgendaItem {
  const AgendaItem({
    required this.startTime,
    required this.name,
    required this.description,
    required this.place,
    required this.activity,
    this.speaker,
    this.endTime,
  });

  final TimeOfDay startTime;
  final TimeOfDay? endTime;
  final String name;
  final String description;
  final String? speaker;
  final String place;
  final Activity activity;
}
