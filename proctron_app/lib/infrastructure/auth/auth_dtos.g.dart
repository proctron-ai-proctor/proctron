// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterDto _$$_RegisterDtoFromJson(Map<String, dynamic> json) =>
    _$_RegisterDto(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_RegisterDtoToJson(_$_RegisterDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };

_$_LoginDto _$$_LoginDtoFromJson(Map<String, dynamic> json) => _$_LoginDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_LoginDtoToJson(_$_LoginDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$_RegisterResponseDto _$$_RegisterResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterResponseDto(
      auth: json['auth'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_RegisterResponseDtoToJson(
        _$_RegisterResponseDto instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'message': instance.message,
    };

_$_SuccessfulLoginResponseMessageDto
    _$$_SuccessfulLoginResponseMessageDtoFromJson(Map<String, dynamic> json) =>
        _$_SuccessfulLoginResponseMessageDto(
          name: json['name'] as String,
          email: json['email'] as String,
        );

Map<String, dynamic> _$$_SuccessfulLoginResponseMessageDtoToJson(
        _$_SuccessfulLoginResponseMessageDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };

_$_LoginResponseDto _$$_LoginResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_LoginResponseDto(
      auth: json['auth'] as bool,
      message: json['message'],
    );

Map<String, dynamic> _$$_LoginResponseDtoToJson(_$_LoginResponseDto instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'message': instance.message,
    };
