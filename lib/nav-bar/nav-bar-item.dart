import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key, required this.content, this.onClick});

  final String content;
  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 0,
      highlightColor: const Color.fromARGB(101, 121, 129, 122),
      onTap: onClick,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                content,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.lightGreen, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
