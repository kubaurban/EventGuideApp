import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/message.dart';
import '../data/messages/data-source.dart';

class MessengerCubit extends Cubit<MessengerState> {
  MessengerCubit({required DataSource dataSource})
      : _dataSource = dataSource,
        super(const MessengerInitialState()) {
    _sub = _dataSource.messageStream.listen((messages) =>
        emit(MessengerLoadedState(messages: messages.reversed.toList())));
  }

  final DataSource _dataSource;
  late final StreamSubscription _sub;

  Future<void> refresh() async {
    final messages = await _dataSource.getMessages();
    emit(MessengerLoadedState(
      messages: messages.reversed.toList(),
    ));
  }

  Future<void> sendMessage(String text, String author) =>
      _dataSource.sendMessage(Message(
        content: text,
        timestamp: DateTime.now(),
        author: author,
      ));

  @override
  Future<void> close() async {
    await _sub.cancel();
    return super.close();
  }
}

abstract class MessengerState {
  const MessengerState();
}

class MessengerInitialState extends MessengerState {
  const MessengerInitialState();
}

class MessengerLoadedState extends MessengerState {
  const MessengerLoadedState({
    required this.messages,
  });

  final List<Message> messages;
}
