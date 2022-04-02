import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:proctron_app/domain/auth/i_auth_facade.dart';
import 'package:proctron_app/domain/user/i_user_repository.dart';
import 'package:proctron_app/injection.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  AuthBloc(this._authFacade, this._userRepository)
      : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (_) async {
          debugPrint("auth check was requested");
          emit(const AuthState.loading());
          final userOption = await _userRepository.getLoggedInUser();

          emit(
            userOption.fold(
              () => const AuthState.unauthenticated(),
              (user) => const AuthState.authenticated(),
            ),
          );
        },
        signedOut: (_) async {
          debugPrint("signing out");
          emit(const AuthState.loading());
          await _authFacade.signOut();
          debugPrint("signed out");
          emit(const AuthState.unauthenticated());
        },
      );
    });
  }
}
