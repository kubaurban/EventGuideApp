import 'package:event_guide/nav-bar/nav-bar-item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth/auth-cubit.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 10),
          NavBarItem(
            content: 'Home',
            onClick: () => Navigator.pushNamed(context, '/'),
          ),
          NavBarItem(
            content: 'First day',
            onClick: () => Navigator.pushNamed(context, '/first-day'),
          ),
          NavBarItem(
            content: 'Second day',
            onClick: () => Navigator.pushNamed(context, '/first-day'),
          ),
          NavBarItem(
            content: 'Third day',
            onClick: () => Navigator.pushNamed(context, '/first-day'),
          ),
          if (context.read<AuthCubit>().authService.isSignedIn) ...[
            NavBarItem(
              content: 'Announcements',
              onClick: () => Navigator.pushNamed(context, '/announcements'),
            ),
            NavBarItem(
              content: 'Sign out',
              onClick: () {
                context.read<AuthCubit>().signOut();
                Navigator.pushNamed(context, '/');
              },
            ),
          ]
        ],
      ),
    );
  }
}
