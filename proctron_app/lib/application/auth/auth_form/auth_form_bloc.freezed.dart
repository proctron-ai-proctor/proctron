// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFormEventTearOff {
  const _$AuthFormEventTearOff();

  UsernameChanged usernameChanged(String usernameStr) {
    return UsernameChanged(
      usernameStr,
    );
  }

  EmailAddressChanged emailAddressChanged(String emailStr) {
    return EmailAddressChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  LoginPressed loginPressed() {
    return const LoginPressed();
  }

  RegisterPressed registerPressed() {
    return const RegisterPressed();
  }

  SwitchToLoginPressed switchToLoginPressed() {
    return const SwitchToLoginPressed();
  }

  SwitchToRegisterPressed switchToRegisterPressed() {
    return const SwitchToRegisterPressed();
  }
}

/// @nodoc
const $AuthFormEvent = _$AuthFormEventTearOff();

/// @nodoc
mixin _$AuthFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String emailStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() loginPressed,
    required TResult Function() registerPressed,
    required TResult Function() switchToLoginPressed,
    required TResult Function() switchToRegisterPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(SwitchToLoginPressed value) switchToLoginPressed,
    required TResult Function(SwitchToRegisterPressed value)
        switchToRegisterPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormEventCopyWith<$Res> {
  factory $AuthFormEventCopyWith(
          AuthFormEvent value, $Res Function(AuthFormEvent) then) =
      _$AuthFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFormEventCopyWithImpl<$Res>
    implements $AuthFormEventCopyWith<$Res> {
  _$AuthFormEventCopyWithImpl(this._value, this._then);

  final AuthFormEvent _value;
  // ignore: unused_field
  final $Res Function(AuthFormEvent) _then;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object? usernameStr = freezed,
  }) {
    return _then(UsernameChanged(
      usernameStr == freezed
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.usernameStr);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'AuthFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsernameChanged &&
            const DeepCollectionEquality()
                .equals(other.usernameStr, usernameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(usernameStr));

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String emailStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() loginPressed,
    required TResult Function() registerPressed,
    required TResult Function() switchToLoginPressed,
    required TResult Function() switchToRegisterPressed,
  }) {
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
  }) {
    return usernameChanged?.call(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(SwitchToLoginPressed value) switchToLoginPressed,
    required TResult Function(SwitchToRegisterPressed value)
        switchToRegisterPressed,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements AuthFormEvent {
  const factory UsernameChanged(String usernameStr) = _$UsernameChanged;

  String get usernameStr;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAddressChangedCopyWith<$Res> {
  factory $EmailAddressChangedCopyWith(
          EmailAddressChanged value, $Res Function(EmailAddressChanged) then) =
      _$EmailAddressChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailAddressChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $EmailAddressChangedCopyWith<$Res> {
  _$EmailAddressChangedCopyWithImpl(
      EmailAddressChanged _value, $Res Function(EmailAddressChanged) _then)
      : super(_value, (v) => _then(v as EmailAddressChanged));

  @override
  EmailAddressChanged get _value => super._value as EmailAddressChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailAddressChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailAddressChanged implements EmailAddressChanged {
  const _$EmailAddressChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AuthFormEvent.emailAddressChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailAddressChanged &&
            const DeepCollectionEquality().equals(other.emailStr, emailStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailStr));

  @JsonKey(ignore: true)
  @override
  $EmailAddressChangedCopyWith<EmailAddressChanged> get copyWith =>
      _$EmailAddressChangedCopyWithImpl<EmailAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String emailStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() loginPressed,
    required TResult Function() registerPressed,
    required TResult Function() switchToLoginPressed,
    required TResult Function() switchToRegisterPressed,
  }) {
    return emailAddressChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
  }) {
    return emailAddressChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(SwitchToLoginPressed value) switchToLoginPressed,
    required TResult Function(SwitchToRegisterPressed value)
        switchToRegisterPressed,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class EmailAddressChanged implements AuthFormEvent {
  const factory EmailAddressChanged(String emailStr) = _$EmailAddressChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailAddressChangedCopyWith<EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'AuthFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String emailStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() loginPressed,
    required TResult Function() registerPressed,
    required TResult Function() switchToLoginPressed,
    required TResult Function() switchToRegisterPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(SwitchToLoginPressed value) switchToLoginPressed,
    required TResult Function(SwitchToRegisterPressed value)
        switchToRegisterPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPressedCopyWith<$Res> {
  factory $LoginPressedCopyWith(
          LoginPressed value, $Res Function(LoginPressed) then) =
      _$LoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPressedCopyWithImpl<$Res> extends _$AuthFormEventCopyWithImpl<$Res>
    implements $LoginPressedCopyWith<$Res> {
  _$LoginPressedCopyWithImpl(
      LoginPressed _value, $Res Function(LoginPressed) _then)
      : super(_value, (v) => _then(v as LoginPressed));

  @override
  LoginPressed get _value => super._value as LoginPressed;
}

/// @nodoc

class _$LoginPressed implements LoginPressed {
  const _$LoginPressed();

  @override
  String toString() {
    return 'AuthFormEvent.loginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String emailStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() loginPressed,
    required TResult Function() registerPressed,
    required TResult Function() switchToLoginPressed,
    required TResult Function() switchToRegisterPressed,
  }) {
    return loginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
  }) {
    return loginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(SwitchToLoginPressed value) switchToLoginPressed,
    required TResult Function(SwitchToRegisterPressed value)
        switchToRegisterPressed,
  }) {
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
  }) {
    return loginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class LoginPressed implements AuthFormEvent {
  const factory LoginPressed() = _$LoginPressed;
}

/// @nodoc
abstract class $RegisterPressedCopyWith<$Res> {
  factory $RegisterPressedCopyWith(
          RegisterPressed value, $Res Function(RegisterPressed) then) =
      _$RegisterPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterPressedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $RegisterPressedCopyWith<$Res> {
  _$RegisterPressedCopyWithImpl(
      RegisterPressed _value, $Res Function(RegisterPressed) _then)
      : super(_value, (v) => _then(v as RegisterPressed));

  @override
  RegisterPressed get _value => super._value as RegisterPressed;
}

/// @nodoc

class _$RegisterPressed implements RegisterPressed {
  const _$RegisterPressed();

  @override
  String toString() {
    return 'AuthFormEvent.registerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String emailStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() loginPressed,
    required TResult Function() registerPressed,
    required TResult Function() switchToLoginPressed,
    required TResult Function() switchToRegisterPressed,
  }) {
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
  }) {
    return registerPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(SwitchToLoginPressed value) switchToLoginPressed,
    required TResult Function(SwitchToRegisterPressed value)
        switchToRegisterPressed,
  }) {
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
  }) {
    return registerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterPressed implements AuthFormEvent {
  const factory RegisterPressed() = _$RegisterPressed;
}

/// @nodoc
abstract class $SwitchToLoginPressedCopyWith<$Res> {
  factory $SwitchToLoginPressedCopyWith(SwitchToLoginPressed value,
          $Res Function(SwitchToLoginPressed) then) =
      _$SwitchToLoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwitchToLoginPressedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $SwitchToLoginPressedCopyWith<$Res> {
  _$SwitchToLoginPressedCopyWithImpl(
      SwitchToLoginPressed _value, $Res Function(SwitchToLoginPressed) _then)
      : super(_value, (v) => _then(v as SwitchToLoginPressed));

  @override
  SwitchToLoginPressed get _value => super._value as SwitchToLoginPressed;
}

/// @nodoc

class _$SwitchToLoginPressed implements SwitchToLoginPressed {
  const _$SwitchToLoginPressed();

  @override
  String toString() {
    return 'AuthFormEvent.switchToLoginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SwitchToLoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String emailStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() loginPressed,
    required TResult Function() registerPressed,
    required TResult Function() switchToLoginPressed,
    required TResult Function() switchToRegisterPressed,
  }) {
    return switchToLoginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
  }) {
    return switchToLoginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (switchToLoginPressed != null) {
      return switchToLoginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(SwitchToLoginPressed value) switchToLoginPressed,
    required TResult Function(SwitchToRegisterPressed value)
        switchToRegisterPressed,
  }) {
    return switchToLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
  }) {
    return switchToLoginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (switchToLoginPressed != null) {
      return switchToLoginPressed(this);
    }
    return orElse();
  }
}

abstract class SwitchToLoginPressed implements AuthFormEvent {
  const factory SwitchToLoginPressed() = _$SwitchToLoginPressed;
}

/// @nodoc
abstract class $SwitchToRegisterPressedCopyWith<$Res> {
  factory $SwitchToRegisterPressedCopyWith(SwitchToRegisterPressed value,
          $Res Function(SwitchToRegisterPressed) then) =
      _$SwitchToRegisterPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwitchToRegisterPressedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements $SwitchToRegisterPressedCopyWith<$Res> {
  _$SwitchToRegisterPressedCopyWithImpl(SwitchToRegisterPressed _value,
      $Res Function(SwitchToRegisterPressed) _then)
      : super(_value, (v) => _then(v as SwitchToRegisterPressed));

  @override
  SwitchToRegisterPressed get _value => super._value as SwitchToRegisterPressed;
}

/// @nodoc

class _$SwitchToRegisterPressed implements SwitchToRegisterPressed {
  const _$SwitchToRegisterPressed();

  @override
  String toString() {
    return 'AuthFormEvent.switchToRegisterPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SwitchToRegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function(String emailStr) emailAddressChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() loginPressed,
    required TResult Function() registerPressed,
    required TResult Function() switchToLoginPressed,
    required TResult Function() switchToRegisterPressed,
  }) {
    return switchToRegisterPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
  }) {
    return switchToRegisterPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function(String emailStr)? emailAddressChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? loginPressed,
    TResult Function()? registerPressed,
    TResult Function()? switchToLoginPressed,
    TResult Function()? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (switchToRegisterPressed != null) {
      return switchToRegisterPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(EmailAddressChanged value) emailAddressChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(RegisterPressed value) registerPressed,
    required TResult Function(SwitchToLoginPressed value) switchToLoginPressed,
    required TResult Function(SwitchToRegisterPressed value)
        switchToRegisterPressed,
  }) {
    return switchToRegisterPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
  }) {
    return switchToRegisterPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(EmailAddressChanged value)? emailAddressChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(RegisterPressed value)? registerPressed,
    TResult Function(SwitchToLoginPressed value)? switchToLoginPressed,
    TResult Function(SwitchToRegisterPressed value)? switchToRegisterPressed,
    required TResult orElse(),
  }) {
    if (switchToRegisterPressed != null) {
      return switchToRegisterPressed(this);
    }
    return orElse();
  }
}

abstract class SwitchToRegisterPressed implements AuthFormEvent {
  const factory SwitchToRegisterPressed() = _$SwitchToRegisterPressed;
}

/// @nodoc
class _$AuthFormStateTearOff {
  const _$AuthFormStateTearOff();

  _AuthFormState call(
      {required Username username,
      required EmailAddress emailAddress,
      required Password password,
      required bool isSubmitting,
      required bool showErrorMessages,
      required bool isLoginMode,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _AuthFormState(
      username: username,
      emailAddress: emailAddress,
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      isLoginMode: isLoginMode,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $AuthFormState = _$AuthFormStateTearOff();

/// @nodoc
mixin _$AuthFormState {
  Username get username => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isLoginMode => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFormStateCopyWith<AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      bool isLoginMode,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$AuthFormStateCopyWithImpl<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  _$AuthFormStateCopyWithImpl(this._value, this._then);

  final AuthFormState _value;
  // ignore: unused_field
  final $Res Function(AuthFormState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? isLoginMode = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginMode: isLoginMode == freezed
          ? _value.isLoginMode
          : isLoginMode // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AuthFormStateCopyWith<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  factory _$AuthFormStateCopyWith(
          _AuthFormState value, $Res Function(_AuthFormState) then) =
      __$AuthFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      bool isLoginMode,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$AuthFormStateCopyWithImpl<$Res>
    extends _$AuthFormStateCopyWithImpl<$Res>
    implements _$AuthFormStateCopyWith<$Res> {
  __$AuthFormStateCopyWithImpl(
      _AuthFormState _value, $Res Function(_AuthFormState) _then)
      : super(_value, (v) => _then(v as _AuthFormState));

  @override
  _AuthFormState get _value => super._value as _AuthFormState;

  @override
  $Res call({
    Object? username = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? isLoginMode = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_AuthFormState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginMode: isLoginMode == freezed
          ? _value.isLoginMode
          : isLoginMode // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthFormState implements _AuthFormState {
  const _$_AuthFormState(
      {required this.username,
      required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.isLoginMode,
      required this.authFailureOrSuccessOption});

  @override
  final Username username;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final bool isLoginMode;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthFormState(username: $username, emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, isLoginMode: $isLoginMode, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthFormState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isLoginMode, isLoginMode) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isLoginMode),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith =>
      __$AuthFormStateCopyWithImpl<_AuthFormState>(this, _$identity);
}

abstract class _AuthFormState implements AuthFormState {
  const factory _AuthFormState(
      {required Username username,
      required EmailAddress emailAddress,
      required Password password,
      required bool isSubmitting,
      required bool showErrorMessages,
      required bool isLoginMode,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_AuthFormState;

  @override
  Username get username;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  bool get isLoginMode;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
