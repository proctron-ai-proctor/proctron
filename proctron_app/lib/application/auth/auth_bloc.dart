import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:proctron_app/domain/auth/entities.dart';
import 'package:proctron_app/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (_) async {
          final userOption = await _authFacade.getLoggedInUser();

          emit(
            userOption.fold(
              () => const AuthState.unauthenticated(),
              (user) => AuthState.authenticated(),
            ),
          );
        },
        signedOut: (_) async {
          await _authFacade.signOut();
          emit(const AuthState.unauthenticated());
        },
      );
    });
  }
}
