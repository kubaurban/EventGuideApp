import 'package:event_guide/auth/auth-service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'messenger-cubit.dart';

class MessageBox extends StatefulWidget {
  const MessageBox({required this.author, super.key});

  final String author;

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        Expanded(
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.multiline,
            maxLines: null,
          ),
        ),
        IconButton(
            icon: const Icon(Icons.send, color: Colors.lightGreen),
            onPressed: () {
              if (_controller.text != '') {
                context
                    .read<MessengerCubit>()
                    .sendMessage(_controller.text, widget.author);
                FocusScope.of(context).unfocus();
                _controller.text = '';
              }
            }),
      ],
    );
  }
}
