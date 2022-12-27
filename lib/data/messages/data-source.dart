import 'package:cloud_firestore/cloud_firestore.dart';

import '../message.dart';
import 'message-extension.dart';

class DataSource {
  const DataSource({required FirebaseFirestore firestore})
      : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Future<List<Message>> getMessages() async {
    final messages = await _firestore
        .collection('messages')
        .orderBy(
          'timestamp',
        )
        .get();
    return messages.docs.map(MessageExtension.getMessageFromSnapshot).toList();
  }

  Future<void> sendMessage(Message message) => _firestore
      .collection('messages')
      .add(MessageExtension.getMapFromMessage(message));

  Stream<List<Message>> get messageStream => _firestore
      .collection('messages')
      .orderBy('timestamp')
      .snapshots()
      .map((m) => m.docs.map(MessageExtension.getMessageFromSnapshot).toList());
}
