import 'package:event_guide/data/agenda-item.dart';
import 'package:flutter/material.dart';

import 'agenda-item-tile/agenda-item-tile.dart';
import '../nav-bar/nav-bar.dart';

class Agenda extends StatefulWidget {
  const Agenda({super.key, required this.title, required this.items});

  final List<AgendaItem> items;
  final String title;

  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  bool navBarVisible = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: GestureDetector(
            onTap: () => setState(() => navBarVisible = !navBarVisible),
            child: const Icon(Icons.menu),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      ...widget.items.map(
                        (j) => AgendaItemTile(
                          item: j,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (navBarVisible) const NavBar()
          ],
        ),
      ),
    );
  }
}
