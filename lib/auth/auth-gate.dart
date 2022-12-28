import 'package:event_guide/home-page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../sign-in-page.dart';
import 'auth-cubit.dart';
import 'auth-service.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => AuthService(
        firebaseAuth: FirebaseAuth.instance,
      ),
      child: BlocProvider(
        create: (ctx) => AuthCubit(
          authService: ctx.read(),
        ),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is SignedInState) {
              return Container();
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
        ),
      ),
    );
  }
}
