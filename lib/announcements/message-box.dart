import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'messenger-cubit.dart';

class MessageBox extends StatefulWidget {
  const MessageBox({super.key});

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
              context
                  .read<MessengerCubit>()
                  .sendMessage(_controller.text, 'TODO');
              FocusScope.of(context).unfocus();
              _controller.text = '';
            }),
      ],
    );
  }
}
