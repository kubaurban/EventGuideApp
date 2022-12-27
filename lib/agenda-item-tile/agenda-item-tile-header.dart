import 'package:flutter/material.dart';

class AgendaItemTileHeader extends StatelessWidget {
  const AgendaItemTileHeader(
      {super.key, required this.startTime, required this.name});

  final TimeOfDay startTime;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          startTime.format(context),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(width: 15),
        Text(
          name,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
