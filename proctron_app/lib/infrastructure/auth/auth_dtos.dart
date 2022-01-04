import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dtos.freezed.dart';
part 'auth_dtos.g.dart';

@freezed
class RegisterDto with _$RegisterDto {
  const factory RegisterDto({
    required String name,
    required String email,
    required String password,
  }) = _RegisterDto;

  const RegisterDto._();

  factory RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterDtoFromJson(json);
}

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String email,
    required String password,
  }) = _LoginDto;

  const LoginDto._();

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}

@freezed
class RegisterResponseDto with _$RegisterResponseDto {
  const factory RegisterResponseDto({
    required bool auth,
    required String message,
  }) = _RegisterResponseDto;

  const RegisterResponseDto._();

  factory RegisterResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseDtoFromJson(json);
}

@freezed
class SuccessfulLoginResponseMessageDto
    with _$SuccessfulLoginResponseMessageDto {
  const factory SuccessfulLoginResponseMessageDto({
    required String name,
    required String email,
  }) = _SuccessfulLoginResponseMessageDto;

  const SuccessfulLoginResponseMessageDto._();

  factory SuccessfulLoginResponseMessageDto.fromJson(
          Map<String, dynamic> json) =>
      _$SuccessfulLoginResponseMessageDtoFromJson(json);
}

@freezed
class LoginResponseDto with _$LoginResponseDto {
  const factory LoginResponseDto({
    required bool auth,
    required dynamic message,
  }) = _LoginResponseDto;

  const LoginResponseDto._();

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);
}
