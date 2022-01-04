// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterDto _$RegisterDtoFromJson(Map<String, dynamic> json) {
  return _RegisterDto.fromJson(json);
}

/// @nodoc
class _$RegisterDtoTearOff {
  const _$RegisterDtoTearOff();

  _RegisterDto call(
      {required String name, required String email, required String password}) {
    return _RegisterDto(
      name: name,
      email: email,
      password: password,
    );
  }

  RegisterDto fromJson(Map<String, Object?> json) {
    return RegisterDto.fromJson(json);
  }
}

/// @nodoc
const $RegisterDto = _$RegisterDtoTearOff();

/// @nodoc
mixin _$RegisterDto {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDtoCopyWith<RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDtoCopyWith<$Res> {
  factory $RegisterDtoCopyWith(
          RegisterDto value, $Res Function(RegisterDto) then) =
      _$RegisterDtoCopyWithImpl<$Res>;
  $Res call({String name, String email, String password});
}

/// @nodoc
class _$RegisterDtoCopyWithImpl<$Res> implements $RegisterDtoCopyWith<$Res> {
  _$RegisterDtoCopyWithImpl(this._value, this._then);

  final RegisterDto _value;
  // ignore: unused_field
  final $Res Function(RegisterDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterDtoCopyWith<$Res>
    implements $RegisterDtoCopyWith<$Res> {
  factory _$RegisterDtoCopyWith(
          _RegisterDto value, $Res Function(_RegisterDto) then) =
      __$RegisterDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$RegisterDtoCopyWithImpl<$Res> extends _$RegisterDtoCopyWithImpl<$Res>
    implements _$RegisterDtoCopyWith<$Res> {
  __$RegisterDtoCopyWithImpl(
      _RegisterDto _value, $Res Function(_RegisterDto) _then)
      : super(_value, (v) => _then(v as _RegisterDto));

  @override
  _RegisterDto get _value => super._value as _RegisterDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_RegisterDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterDto extends _RegisterDto {
  const _$_RegisterDto(
      {required this.name, required this.email, required this.password})
      : super._();

  factory _$_RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterDtoFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterDto(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$RegisterDtoCopyWith<_RegisterDto> get copyWith =>
      __$RegisterDtoCopyWithImpl<_RegisterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDtoToJson(this);
  }
}

abstract class _RegisterDto extends RegisterDto {
  const factory _RegisterDto(
      {required String name,
      required String email,
      required String password}) = _$_RegisterDto;
  const _RegisterDto._() : super._();

  factory _RegisterDto.fromJson(Map<String, dynamic> json) =
      _$_RegisterDto.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$RegisterDtoCopyWith<_RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) {
  return _LoginDto.fromJson(json);
}

/// @nodoc
class _$LoginDtoTearOff {
  const _$LoginDtoTearOff();

  _LoginDto call({required String email, required String password}) {
    return _LoginDto(
      email: email,
      password: password,
    );
  }

  LoginDto fromJson(Map<String, Object?> json) {
    return LoginDto.fromJson(json);
  }
}

/// @nodoc
const $LoginDto = _$LoginDtoTearOff();

/// @nodoc
mixin _$LoginDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDtoCopyWith<LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDtoCopyWith<$Res> {
  factory $LoginDtoCopyWith(LoginDto value, $Res Function(LoginDto) then) =
      _$LoginDtoCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginDtoCopyWithImpl<$Res> implements $LoginDtoCopyWith<$Res> {
  _$LoginDtoCopyWithImpl(this._value, this._then);

  final LoginDto _value;
  // ignore: unused_field
  final $Res Function(LoginDto) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginDtoCopyWith<$Res> implements $LoginDtoCopyWith<$Res> {
  factory _$LoginDtoCopyWith(_LoginDto value, $Res Function(_LoginDto) then) =
      __$LoginDtoCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginDtoCopyWithImpl<$Res> extends _$LoginDtoCopyWithImpl<$Res>
    implements _$LoginDtoCopyWith<$Res> {
  __$LoginDtoCopyWithImpl(_LoginDto _value, $Res Function(_LoginDto) _then)
      : super(_value, (v) => _then(v as _LoginDto));

  @override
  _LoginDto get _value => super._value as _LoginDto;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_LoginDto(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginDto extends _LoginDto {
  const _$_LoginDto({required this.email, required this.password}) : super._();

  factory _$_LoginDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginDtoFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginDto(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginDto &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$LoginDtoCopyWith<_LoginDto> get copyWith =>
      __$LoginDtoCopyWithImpl<_LoginDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginDtoToJson(this);
  }
}

abstract class _LoginDto extends LoginDto {
  const factory _LoginDto({required String email, required String password}) =
      _$_LoginDto;
  const _LoginDto._() : super._();

  factory _LoginDto.fromJson(Map<String, dynamic> json) = _$_LoginDto.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$LoginDtoCopyWith<_LoginDto> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterResponseDto _$RegisterResponseDtoFromJson(Map<String, dynamic> json) {
  return _RegisterResponseDto.fromJson(json);
}

/// @nodoc
class _$RegisterResponseDtoTearOff {
  const _$RegisterResponseDtoTearOff();

  _RegisterResponseDto call({required bool auth, required String message}) {
    return _RegisterResponseDto(
      auth: auth,
      message: message,
    );
  }

  RegisterResponseDto fromJson(Map<String, Object?> json) {
    return RegisterResponseDto.fromJson(json);
  }
}

/// @nodoc
const $RegisterResponseDto = _$RegisterResponseDtoTearOff();

/// @nodoc
mixin _$RegisterResponseDto {
  bool get auth => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseDtoCopyWith<RegisterResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseDtoCopyWith<$Res> {
  factory $RegisterResponseDtoCopyWith(
          RegisterResponseDto value, $Res Function(RegisterResponseDto) then) =
      _$RegisterResponseDtoCopyWithImpl<$Res>;
  $Res call({bool auth, String message});
}

/// @nodoc
class _$RegisterResponseDtoCopyWithImpl<$Res>
    implements $RegisterResponseDtoCopyWith<$Res> {
  _$RegisterResponseDtoCopyWithImpl(this._value, this._then);

  final RegisterResponseDto _value;
  // ignore: unused_field
  final $Res Function(RegisterResponseDto) _then;

  @override
  $Res call({
    Object? auth = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterResponseDtoCopyWith<$Res>
    implements $RegisterResponseDtoCopyWith<$Res> {
  factory _$RegisterResponseDtoCopyWith(_RegisterResponseDto value,
          $Res Function(_RegisterResponseDto) then) =
      __$RegisterResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({bool auth, String message});
}

/// @nodoc
class __$RegisterResponseDtoCopyWithImpl<$Res>
    extends _$RegisterResponseDtoCopyWithImpl<$Res>
    implements _$RegisterResponseDtoCopyWith<$Res> {
  __$RegisterResponseDtoCopyWithImpl(
      _RegisterResponseDto _value, $Res Function(_RegisterResponseDto) _then)
      : super(_value, (v) => _then(v as _RegisterResponseDto));

  @override
  _RegisterResponseDto get _value => super._value as _RegisterResponseDto;

  @override
  $Res call({
    Object? auth = freezed,
    Object? message = freezed,
  }) {
    return _then(_RegisterResponseDto(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterResponseDto extends _RegisterResponseDto {
  const _$_RegisterResponseDto({required this.auth, required this.message})
      : super._();

  factory _$_RegisterResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterResponseDtoFromJson(json);

  @override
  final bool auth;
  @override
  final String message;

  @override
  String toString() {
    return 'RegisterResponseDto(auth: $auth, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterResponseDto &&
            const DeepCollectionEquality().equals(other.auth, auth) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(auth),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$RegisterResponseDtoCopyWith<_RegisterResponseDto> get copyWith =>
      __$RegisterResponseDtoCopyWithImpl<_RegisterResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterResponseDtoToJson(this);
  }
}

abstract class _RegisterResponseDto extends RegisterResponseDto {
  const factory _RegisterResponseDto(
      {required bool auth, required String message}) = _$_RegisterResponseDto;
  const _RegisterResponseDto._() : super._();

  factory _RegisterResponseDto.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponseDto.fromJson;

  @override
  bool get auth;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$RegisterResponseDtoCopyWith<_RegisterResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SuccessfulLoginResponseMessageDto _$SuccessfulLoginResponseMessageDtoFromJson(
    Map<String, dynamic> json) {
  return _SuccessfulLoginResponseMessageDto.fromJson(json);
}

/// @nodoc
class _$SuccessfulLoginResponseMessageDtoTearOff {
  const _$SuccessfulLoginResponseMessageDtoTearOff();

  _SuccessfulLoginResponseMessageDto call(
      {required String name, required String email}) {
    return _SuccessfulLoginResponseMessageDto(
      name: name,
      email: email,
    );
  }

  SuccessfulLoginResponseMessageDto fromJson(Map<String, Object?> json) {
    return SuccessfulLoginResponseMessageDto.fromJson(json);
  }
}

/// @nodoc
const $SuccessfulLoginResponseMessageDto =
    _$SuccessfulLoginResponseMessageDtoTearOff();

/// @nodoc
mixin _$SuccessfulLoginResponseMessageDto {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessfulLoginResponseMessageDtoCopyWith<SuccessfulLoginResponseMessageDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessfulLoginResponseMessageDtoCopyWith<$Res> {
  factory $SuccessfulLoginResponseMessageDtoCopyWith(
          SuccessfulLoginResponseMessageDto value,
          $Res Function(SuccessfulLoginResponseMessageDto) then) =
      _$SuccessfulLoginResponseMessageDtoCopyWithImpl<$Res>;
  $Res call({String name, String email});
}

/// @nodoc
class _$SuccessfulLoginResponseMessageDtoCopyWithImpl<$Res>
    implements $SuccessfulLoginResponseMessageDtoCopyWith<$Res> {
  _$SuccessfulLoginResponseMessageDtoCopyWithImpl(this._value, this._then);

  final SuccessfulLoginResponseMessageDto _value;
  // ignore: unused_field
  final $Res Function(SuccessfulLoginResponseMessageDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SuccessfulLoginResponseMessageDtoCopyWith<$Res>
    implements $SuccessfulLoginResponseMessageDtoCopyWith<$Res> {
  factory _$SuccessfulLoginResponseMessageDtoCopyWith(
          _SuccessfulLoginResponseMessageDto value,
          $Res Function(_SuccessfulLoginResponseMessageDto) then) =
      __$SuccessfulLoginResponseMessageDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email});
}

/// @nodoc
class __$SuccessfulLoginResponseMessageDtoCopyWithImpl<$Res>
    extends _$SuccessfulLoginResponseMessageDtoCopyWithImpl<$Res>
    implements _$SuccessfulLoginResponseMessageDtoCopyWith<$Res> {
  __$SuccessfulLoginResponseMessageDtoCopyWithImpl(
      _SuccessfulLoginResponseMessageDto _value,
      $Res Function(_SuccessfulLoginResponseMessageDto) _then)
      : super(_value, (v) => _then(v as _SuccessfulLoginResponseMessageDto));

  @override
  _SuccessfulLoginResponseMessageDto get _value =>
      super._value as _SuccessfulLoginResponseMessageDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_SuccessfulLoginResponseMessageDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuccessfulLoginResponseMessageDto
    extends _SuccessfulLoginResponseMessageDto {
  const _$_SuccessfulLoginResponseMessageDto(
      {required this.name, required this.email})
      : super._();

  factory _$_SuccessfulLoginResponseMessageDto.fromJson(
          Map<String, dynamic> json) =>
      _$$_SuccessfulLoginResponseMessageDtoFromJson(json);

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'SuccessfulLoginResponseMessageDto(name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessfulLoginResponseMessageDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$SuccessfulLoginResponseMessageDtoCopyWith<
          _SuccessfulLoginResponseMessageDto>
      get copyWith => __$SuccessfulLoginResponseMessageDtoCopyWithImpl<
          _SuccessfulLoginResponseMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuccessfulLoginResponseMessageDtoToJson(this);
  }
}

abstract class _SuccessfulLoginResponseMessageDto
    extends SuccessfulLoginResponseMessageDto {
  const factory _SuccessfulLoginResponseMessageDto(
      {required String name,
      required String email}) = _$_SuccessfulLoginResponseMessageDto;
  const _SuccessfulLoginResponseMessageDto._() : super._();

  factory _SuccessfulLoginResponseMessageDto.fromJson(
          Map<String, dynamic> json) =
      _$_SuccessfulLoginResponseMessageDto.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$SuccessfulLoginResponseMessageDtoCopyWith<
          _SuccessfulLoginResponseMessageDto>
      get copyWith => throw _privateConstructorUsedError;
}

LoginResponseDto _$LoginResponseDtoFromJson(Map<String, dynamic> json) {
  return _LoginResponseDto.fromJson(json);
}

/// @nodoc
class _$LoginResponseDtoTearOff {
  const _$LoginResponseDtoTearOff();

  _LoginResponseDto call({required bool auth, required dynamic message}) {
    return _LoginResponseDto(
      auth: auth,
      message: message,
    );
  }

  LoginResponseDto fromJson(Map<String, Object?> json) {
    return LoginResponseDto.fromJson(json);
  }
}

/// @nodoc
const $LoginResponseDto = _$LoginResponseDtoTearOff();

/// @nodoc
mixin _$LoginResponseDto {
  bool get auth => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDtoCopyWith<LoginResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDtoCopyWith<$Res> {
  factory $LoginResponseDtoCopyWith(
          LoginResponseDto value, $Res Function(LoginResponseDto) then) =
      _$LoginResponseDtoCopyWithImpl<$Res>;
  $Res call({bool auth, dynamic message});
}

/// @nodoc
class _$LoginResponseDtoCopyWithImpl<$Res>
    implements $LoginResponseDtoCopyWith<$Res> {
  _$LoginResponseDtoCopyWithImpl(this._value, this._then);

  final LoginResponseDto _value;
  // ignore: unused_field
  final $Res Function(LoginResponseDto) _then;

  @override
  $Res call({
    Object? auth = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$LoginResponseDtoCopyWith<$Res>
    implements $LoginResponseDtoCopyWith<$Res> {
  factory _$LoginResponseDtoCopyWith(
          _LoginResponseDto value, $Res Function(_LoginResponseDto) then) =
      __$LoginResponseDtoCopyWithImpl<$Res>;
  @override
  $Res call({bool auth, dynamic message});
}

/// @nodoc
class __$LoginResponseDtoCopyWithImpl<$Res>
    extends _$LoginResponseDtoCopyWithImpl<$Res>
    implements _$LoginResponseDtoCopyWith<$Res> {
  __$LoginResponseDtoCopyWithImpl(
      _LoginResponseDto _value, $Res Function(_LoginResponseDto) _then)
      : super(_value, (v) => _then(v as _LoginResponseDto));

  @override
  _LoginResponseDto get _value => super._value as _LoginResponseDto;

  @override
  $Res call({
    Object? auth = freezed,
    Object? message = freezed,
  }) {
    return _then(_LoginResponseDto(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseDto extends _LoginResponseDto {
  const _$_LoginResponseDto({required this.auth, required this.message})
      : super._();

  factory _$_LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseDtoFromJson(json);

  @override
  final bool auth;
  @override
  final dynamic message;

  @override
  String toString() {
    return 'LoginResponseDto(auth: $auth, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponseDto &&
            const DeepCollectionEquality().equals(other.auth, auth) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(auth),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$LoginResponseDtoCopyWith<_LoginResponseDto> get copyWith =>
      __$LoginResponseDtoCopyWithImpl<_LoginResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseDtoToJson(this);
  }
}

abstract class _LoginResponseDto extends LoginResponseDto {
  const factory _LoginResponseDto(
      {required bool auth, required dynamic message}) = _$_LoginResponseDto;
  const _LoginResponseDto._() : super._();

  factory _LoginResponseDto.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseDto.fromJson;

  @override
  bool get auth;
  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$LoginResponseDtoCopyWith<_LoginResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
