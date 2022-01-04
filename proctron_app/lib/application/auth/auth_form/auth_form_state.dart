part of 'auth_form_bloc.dart';

@freezed
@immutable
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required Username username,
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required bool isLoginMode,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        username: Username(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        isLoginMode: true,
        authFailureOrSuccessOption: none(),
      );
}
