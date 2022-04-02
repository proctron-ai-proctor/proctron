part of 'auth_form_bloc.dart';

@freezed
@immutable
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required Username username,
    required EmailAddress emailAddress,
    required Password password,
    required bool isLoading,
    required bool showErrorMessages,
    required bool isLoginMode,
    required Option<Either<AuthFailure, User>> authFailureOrSuccessOption,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        username: Username(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        isLoading: false,
        showErrorMessages: false,
        isLoginMode: true,
        authFailureOrSuccessOption: none(),
      );
}
