import 'package:event_guide/nav-bar/nav-bar-item.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          SizedBox(height: 10),
          NavBarItem(
            content: 'Home',
            route: '/',
          ),
          NavBarItem(
            content: 'First day',
            route: '/first-day',
          ),
          NavBarItem(
            content: 'Second day',
            route: '/first-day',
          ),
          NavBarItem(
            content: 'Third day',
            route: '/first-day',
          ),
          NavBarItem(
            content: 'Announcements',
            route: '/announcements',
          ),
        ],
      ),
    );
  }
}
