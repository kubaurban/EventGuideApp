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
            firstChild: Row(
              children: [
                Text(
                  widget.item.startTime.format(context),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(width: 15),
                Text(
                  widget.item.name,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            secondChild: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.item.startTime.format(context),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      widget.item.name,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
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
