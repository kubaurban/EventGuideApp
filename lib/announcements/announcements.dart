import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../data/messages/data-source.dart';
import 'message-box.dart';
import 'message-list.dart';
import 'messenger-cubit.dart';

class Announcements extends StatelessWidget {
  const Announcements({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => DataSource(
        firestore: FirebaseFirestore.instance,
      ),
      child: BlocProvider(
        create: (context) => MessengerCubit(
          dataSource: context.read(),
        )..refresh(),
        child: Column(
          children: const [
            Expanded(
              child: MessageList(),
            ),
            Divider(
              color: Colors.grey,
            ),
            MessageBox(),
          ],
        ),
      ),
    );
  }
}
