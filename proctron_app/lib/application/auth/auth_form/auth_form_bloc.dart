import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:proctron_app/domain/auth/auth_failures.dart';
import 'package:proctron_app/domain/auth/i_auth_facade.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';

part 'auth_form_bloc.freezed.dart';
part 'auth_form_event.dart';
part 'auth_form_state.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final IAuthFacade _authFacade;

  AuthFormBloc(this._authFacade) : super(AuthFormState.initial()) {
    on<AuthFormEvent>(
      (event, emit) => event.map(
        usernameChanged: (e) => emit(
          state.copyWith(
            username: Username(e.usernameStr),
            authFailureOrSuccessOption: none(),
          ),
        ),
        emailAddressChanged: (e) => emit(
          state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            authFailureOrSuccessOption: none(),
          ),
        ),
        passwordChanged: (e) => emit(
          state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccessOption: none(),
          ),
        ),
        loginPressed: (e) => _performAuthFacadeLogin(emit),
        registerPressed: (e) => _performAuthFacadeRegistration(emit),
        switchToLoginPressed: (e) => emit(
          state.copyWith(
            isLoginMode: true,
            authFailureOrSuccessOption: none(),
          ),
        ),
        switchToRegisterPressed: (e) => emit(
          state.copyWith(
            isLoginMode: false,
            authFailureOrSuccessOption: none(),
          ),
        ),
      ),
    );
  }

  Future<void> _performAuthFacadeLogin(Emitter<AuthFormState> emit) async {
    final emailIsValid = state.emailAddress.isValid();
    final passwordIsValid = state.password.isValid();

    Either<AuthFailure, Unit>? authFailureOrSuccess;

    if (emailIsValid && passwordIsValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      authFailureOrSuccess = await _authFacade.loginWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
      ),
    );
  }

  Future<void> _performAuthFacadeRegistration(
      Emitter<AuthFormState> emit) async {
    final usernameIsValid = state.username.isValid();
    final emailIsValid = state.emailAddress.isValid();
    final passwordIsValid = state.password.isValid();

    Either<AuthFailure, Unit>? authFailureOrSuccess;

    if (usernameIsValid && emailIsValid && passwordIsValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      authFailureOrSuccess = await _authFacade.registerWithCredentials(
        username: state.username,
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
      ),
    );
  }
}
