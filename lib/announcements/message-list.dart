import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'message-tile.dart';
import 'messenger-cubit.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: context.watch<MessengerCubit>().refresh,
      child: BlocBuilder<MessengerCubit, MessengerState>(
        builder: (context, state) {
          if (state is MessengerLoadedState) {
            return ListView.builder(
              itemCount: state.messages.length,
              itemBuilder: (_, i) => MessageTile(
                message: state.messages[i],
              ),
              reverse: true,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
