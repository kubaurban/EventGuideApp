import 'package:event_guide/nav-bar/nav-bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String title = 'Event Name';
  bool navBarVisible = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          leading: GestureDetector(
            onTap: () => setState(() => navBarVisible = !navBarVisible),
            child: const Icon(Icons.menu),
          ),
        ),
        body: navBarVisible ? const NavBar() : Container(),
      ),
    );
  }
}
