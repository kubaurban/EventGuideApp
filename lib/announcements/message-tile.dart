import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/message.dart';

class MessageTile extends StatelessWidget {
  MessageTile({
    Key? key,
    required this.message,
  }) : super(key: key);

  final hmDate = DateFormat.Hm();
  final weekdayDate = DateFormat.E();
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(122, 228, 161, 46),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        // ignore: sort_child_properties_last
        children: [
          Text(
            '[${weekdayDate.format(message.timestamp)} ${hmDate.format(message.timestamp)}] ${message.author}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(message.content),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
