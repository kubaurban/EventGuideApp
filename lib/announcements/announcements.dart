import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_guide/auth/auth-cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../data/messages/data-source.dart';
import '../nav-bar/nav-bar.dart';
import 'message-box.dart';
import 'message-list.dart';
import 'messenger-cubit.dart';

class Announcements extends StatefulWidget {
  const Announcements({super.key});

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  final String title = 'Announcements';

  bool navBarVisible = false;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => DataSource(
        firestore: FirebaseFirestore.instance,
      ),
      child: BlocProvider(
          create: (context) => MessengerCubit(
                dataSource: context.read(),
              )..refresh(),
          child: Material(
            child: Scaffold(
              appBar: AppBar(
                title: Text(title),
                leading: GestureDetector(
                  onTap: () => setState(() => navBarVisible = !navBarVisible),
                  child: const Icon(Icons.menu),
                ),
              ),
              body: Stack(children: [
                Column(
                  children: [
                    const Expanded(
                      child: MessageList(),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    MessageBox(
                        author: context.read<AuthCubit>().authService.userName),
                  ],
                ),
                if (navBarVisible) const NavBar()
              ]),
            ),
          )),
    );
  }
}
