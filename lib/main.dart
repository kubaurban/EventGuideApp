import 'package:event_guide/home-page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return MaterialApp(
                  title: 'Event Name',
                  theme: ThemeData(
                    primarySwatch: Colors.lightGreen,
                  ),
                  home: const Material(
                    child: HomePage(),
                  ));
            default:
              return const ColoredBox(
                color: Colors.white,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                ),
              );
          }
        });
  }
}
