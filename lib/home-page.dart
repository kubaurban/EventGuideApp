import 'package:event_guide/agenda.dart';
import 'package:flutter/material.dart';

import 'announcements/announcements.dart';
import 'data/agenda/first-day.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String title = 'Event Name Home Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: const Announcements());
    // body: const Agenda(items: firstDay));
  }
}
