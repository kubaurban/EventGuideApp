import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class NotificationsService {
  const NotificationsService({required FirebaseMessaging messaging})
      : _messaging = messaging;

  final FirebaseMessaging _messaging;

  void registerNotification() async {
    await _messaging.subscribeToTopic("event");

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // On iOS, this helps to take the user permissions
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      // Handling the received notification
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        if (message.notification?.title != null) {
          // Display the notification as an overlay
          showSimpleNotification(
            Text(message.notification!.title!),
            subtitle: Text(message.notification?.body ?? ''),
            background: Colors.orangeAccent,
            duration: const Duration(seconds: 4),
          );
        }
      });
    } else {
      print('User declined or has not accepted permission');
    }
  }
}

Future _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
}
