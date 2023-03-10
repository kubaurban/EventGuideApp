import 'package:event_guide/agenda/agenda.dart';
import 'package:event_guide/announcements/announcements.dart';
import 'package:event_guide/data/agenda/first-day.dart';
import 'package:event_guide/data/agenda/second-day.dart';
import 'package:event_guide/data/agenda/third-day.dart';
import 'package:event_guide/home-page.dart';
import 'package:event_guide/notifications/notifications-service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';

import 'auth/auth-cubit.dart';
import 'auth/auth-service.dart';

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
            return MultiProvider(
              providers: [
                Provider(
                    create: (_) =>
                        AuthService(firebaseAuth: FirebaseAuth.instance)),
                Provider(
                    create: (_) => NotificationsService(
                        messaging: FirebaseMessaging.instance)),
              ],
              child: BlocProvider(
                create: (ctx) => AuthCubit(
                  authService: ctx.read(),
                ),
                child: OverlaySupport(
                  child: MaterialApp(
                    title: 'Event Name',
                    theme: ThemeData(
                      primarySwatch: Colors.lightGreen,
                    ),
                    initialRoute: '/',
                    routes: {
                      '/': (context) => HomePage(
                          notificationsService:
                              context.read<NotificationsService>()),
                      '/first-day': (context) => const Agenda(
                            title: 'First day',
                            items: firstDay,
                          ),
                      '/second-day': (context) => const Agenda(
                            title: 'Second day',
                            items: secondDay,
                          ),
                      '/third-day': (context) => const Agenda(
                            title: 'Third day',
                            items: thirdDay,
                          ),
                      '/announcements': (context) => const Announcements(),
                    },
                  ),
                ),
              ),
            );
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
      },
    );
  }
}
