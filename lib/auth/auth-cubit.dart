import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth-service.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.authService})
      : super(
          authService.isSignedIn
              ? SignedInState(email: authService.userEmail)
              : SignedOutState(),
        );

  final AuthService authService;

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    emit(SigningInState());

    try {
      final result = await authService.signInWithEmail(
        email,
        password,
      );

      switch (result) {
        case SignInResult.success:
          emit(SignedInState(email: email));
          break;
        case SignInResult.invalidEmail:
          emit(SignedOutState(error: "Email was invalid."));
          break;
        case SignInResult.userDisabled:
          emit(SignedOutState(error: "Banned."));
          break;
        case SignInResult.userNotFound:
          emit(SignedOutState(error: "User not found."));
          break;
        case SignInResult.emailAlreadyInUse:
          emit(SignedOutState(error: "Email is in use."));
          break;
        case SignInResult.wrongPassword:
          emit(SignedOutState(error: "Password was invalid."));
          break;
      }
    } catch (e) {
      emit(SignedOutState(error: "Unexpected error"));
    }
  }

  Future<void> signOut() async {
    emit(SigningInState());
    await authService.signOut();
    emit(SignedOutState());
  }
}

abstract class AuthState {}

class SignedInState extends AuthState {
  SignedInState({
    required this.email,
  });

  final String email;
}

class SignedOutState extends AuthState {
  SignedOutState({this.error});

  final String? error;
}

class SigningInState extends AuthState {}
