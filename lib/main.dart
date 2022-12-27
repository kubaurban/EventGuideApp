import 'package:event_guide/home-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Event Name',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: const Material(
          child: HomePage(),
        ));
  }
}
