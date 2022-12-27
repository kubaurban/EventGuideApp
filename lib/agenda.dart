import 'package:event_guide/data/agenda-item.dart';
import 'package:event_guide/data/agenda/first-day.dart';
import 'package:flutter/material.dart';

import 'agenda-item-tile.dart';

class Agenda extends StatelessWidget {
  const Agenda({super.key});

  static const List<AgendaItem> _items = firstDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              ..._items.map(
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
