part of 'auth_form_bloc.dart';

@freezed
@immutable
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
  const factory AuthFormEvent.emailAddressChanged(String emailStr) =
      EmailAddressChanged;
  const factory AuthFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory AuthFormEvent.loginPressed() = LoginPressed;
  const factory AuthFormEvent.registerPressed() = RegisterPressed;
  const factory AuthFormEvent.switchToLoginPressed() = SwitchToLoginPressed;
  const factory AuthFormEvent.switchToRegisterPressed() =
      SwitchToRegisterPressed;
}
