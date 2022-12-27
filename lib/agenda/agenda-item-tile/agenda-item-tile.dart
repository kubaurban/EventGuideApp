import 'package:event_guide/agenda/agenda-item-tile/agenda-item-tile-header.dart';
import 'package:event_guide/data/agenda-item.dart';
import 'package:flutter/material.dart';

class AgendaItemTile extends StatefulWidget {
  const AgendaItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final AgendaItem item;

  @override
  State<AgendaItemTile> createState() => _AgendaItemTileState();
}

class _AgendaItemTileState extends State<AgendaItemTile> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => expanded = !expanded),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: widget.item.activity.color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AnimatedCrossFade(
            duration: const Duration(milliseconds: 200),
            crossFadeState:
                expanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            firstChild: AgendaItemTileHeader(
              startTime: widget.item.startTime,
              name: widget.item.name,
            ),
            secondChild: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AgendaItemTileHeader(
                  startTime: widget.item.startTime,
                  name: widget.item.name,
                ),
                const SizedBox(height: 10),
                Text('Place: ${widget.item.place}'),
                Text('Speaker: ${widget.item.speaker}'),
                Text('Activity: ${widget.item.activity.description}'),
                const SizedBox(height: 10),
                Text(widget.item.description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
