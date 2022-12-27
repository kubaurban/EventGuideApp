import 'package:event_guide/data/agenda-item.dart';
import 'package:flutter/material.dart';

import 'agenda-item-tile/agenda-item-tile.dart';

class Agenda extends StatelessWidget {
  const Agenda({super.key, required this.items});

  final List<AgendaItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              ...items.map(
                (j) => AgendaItemTile(
                  item: j,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
