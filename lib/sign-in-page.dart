import 'package:event_guide/auth/auth-cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key, required this.state});

  final SignedOutState state;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 100,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context
                    .read<AuthCubit>()
                    .signIn(email: email.text, password: password.text);
              },
              child: const Text('Sign in'),
            ),
            const SizedBox(height: 16),
            Text(widget.state.error ?? ''),
          ],
        ),
      ),
    );
  }
}
