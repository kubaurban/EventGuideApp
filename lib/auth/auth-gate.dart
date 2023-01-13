import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../sign-in-page.dart';
import 'auth-cubit.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is SignedInState) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FlutterLogo(
                    size: 200,
                  ),
                  SizedBox(height: 10),
                  Text('Some event details'),
                ],
              ),
            ),
          );
        } else if (state is SignedOutState) {
          return SignInPage(
            state: state,
          );
        } else if (state is SigningInState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
