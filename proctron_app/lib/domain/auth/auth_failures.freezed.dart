// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  EmailAlreadyRegistered emailAlreadyRegistered() {
    return const EmailAlreadyRegistered();
  }

  UsernameTaken usernameTaken() {
    return const UsernameTaken();
  }

  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }

  ConnectionError connectionError() {
    return const ConnectionError();
  }

  UnknownError unknownError() {
    return const UnknownError();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() usernameTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() connectionError,
    required TResult Function() unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(UsernameTaken value) usernameTaken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() usernameTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() connectionError,
    required TResult Function() unknownError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(UsernameTaken value) usernameTaken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailAlreadyRegisteredCopyWith<$Res> {
  factory $EmailAlreadyRegisteredCopyWith(EmailAlreadyRegistered value,
          $Res Function(EmailAlreadyRegistered) then) =
      _$EmailAlreadyRegisteredCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyRegisteredCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyRegisteredCopyWith<$Res> {
  _$EmailAlreadyRegisteredCopyWithImpl(EmailAlreadyRegistered _value,
      $Res Function(EmailAlreadyRegistered) _then)
      : super(_value, (v) => _then(v as EmailAlreadyRegistered));

  @override
  EmailAlreadyRegistered get _value => super._value as EmailAlreadyRegistered;
}

/// @nodoc

class _$EmailAlreadyRegistered implements EmailAlreadyRegistered {
  const _$EmailAlreadyRegistered();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyRegistered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailAlreadyRegistered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() usernameTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() connectionError,
    required TResult Function() unknownError,
  }) {
    return emailAlreadyRegistered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
  }) {
    return emailAlreadyRegistered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (emailAlreadyRegistered != null) {
      return emailAlreadyRegistered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(UsernameTaken value) usernameTaken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return emailAlreadyRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
  }) {
    return emailAlreadyRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (emailAlreadyRegistered != null) {
      return emailAlreadyRegistered(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyRegistered implements AuthFailure {
  const factory EmailAlreadyRegistered() = _$EmailAlreadyRegistered;
}

/// @nodoc
abstract class $UsernameTakenCopyWith<$Res> {
  factory $UsernameTakenCopyWith(
          UsernameTaken value, $Res Function(UsernameTaken) then) =
      _$UsernameTakenCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameTakenCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UsernameTakenCopyWith<$Res> {
  _$UsernameTakenCopyWithImpl(
      UsernameTaken _value, $Res Function(UsernameTaken) _then)
      : super(_value, (v) => _then(v as UsernameTaken));

  @override
  UsernameTaken get _value => super._value as UsernameTaken;
}

/// @nodoc

class _$UsernameTaken implements UsernameTaken {
  const _$UsernameTaken();

  @override
  String toString() {
    return 'AuthFailure.usernameTaken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UsernameTaken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() usernameTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() connectionError,
    required TResult Function() unknownError,
  }) {
    return usernameTaken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
  }) {
    return usernameTaken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (usernameTaken != null) {
      return usernameTaken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(UsernameTaken value) usernameTaken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return usernameTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
  }) {
    return usernameTaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (usernameTaken != null) {
      return usernameTaken(this);
    }
    return orElse();
  }
}

abstract class UsernameTaken implements AuthFailure {
  const factory UsernameTaken() = _$UsernameTaken;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

/// @nodoc

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() usernameTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() connectionError,
    required TResult Function() unknownError,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
  }) {
    return invalidEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(UsernameTaken value) usernameTaken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
  }) {
    return invalidEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}

/// @nodoc
abstract class $ConnectionErrorCopyWith<$Res> {
  factory $ConnectionErrorCopyWith(
          ConnectionError value, $Res Function(ConnectionError) then) =
      _$ConnectionErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $ConnectionErrorCopyWith<$Res> {
  _$ConnectionErrorCopyWithImpl(
      ConnectionError _value, $Res Function(ConnectionError) _then)
      : super(_value, (v) => _then(v as ConnectionError));

  @override
  ConnectionError get _value => super._value as ConnectionError;
}

/// @nodoc

class _$ConnectionError implements ConnectionError {
  const _$ConnectionError();

  @override
  String toString() {
    return 'AuthFailure.connectionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ConnectionError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() usernameTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() connectionError,
    required TResult Function() unknownError,
  }) {
    return connectionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
  }) {
    return connectionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(UsernameTaken value) usernameTaken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class ConnectionError implements AuthFailure {
  const factory ConnectionError() = _$ConnectionError;
}

/// @nodoc
abstract class $UnknownErrorCopyWith<$Res> {
  factory $UnknownErrorCopyWith(
          UnknownError value, $Res Function(UnknownError) then) =
      _$UnknownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UnknownErrorCopyWith<$Res> {
  _$UnknownErrorCopyWithImpl(
      UnknownError _value, $Res Function(UnknownError) _then)
      : super(_value, (v) => _then(v as UnknownError));

  @override
  UnknownError get _value => super._value as UnknownError;
}

/// @nodoc

class _$UnknownError implements UnknownError {
  const _$UnknownError();

  @override
  String toString() {
    return 'AuthFailure.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnknownError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() usernameTaken,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() connectionError,
    required TResult Function() unknownError,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? usernameTaken,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? connectionError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(UsernameTaken value) usernameTaken,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(ConnectionError value) connectionError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(UsernameTaken value)? usernameTaken,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(ConnectionError value)? connectionError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements AuthFailure {
  const factory UnknownError() = _$UnknownError;
}
