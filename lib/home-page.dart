import 'package:event_guide/auth/auth-gate.dart';
import 'package:event_guide/nav-bar/nav-bar.dart';
import 'package:event_guide/notifications/notifications-service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.notificationsService});

  final NotificationsService notificationsService;

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
        body: navBarVisible ? const NavBar() : const AuthGate(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    widget.notificationsService.registerNotification();
  }
}
