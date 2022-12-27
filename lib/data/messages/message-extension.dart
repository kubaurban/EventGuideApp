import 'package:cloud_firestore/cloud_firestore.dart';

import '../message.dart';

class MessageExtension {
  static Message getMessageFromSnapshot(
          QueryDocumentSnapshot<Map<String, dynamic>> snapshot) =>
      Message(
        content: snapshot.data()['content'],
        timestamp: (snapshot.data()['timestamp'] as Timestamp).toDate(),
        author: snapshot.data()['author'],
      );

  static Map<String, dynamic> getMapFromMessage(Message message) => {
        'content': message.content,
        'timestamp': Timestamp.fromDate(message.timestamp),
        'author': message.author,
      };
}
