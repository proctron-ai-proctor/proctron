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
class ResendOtpDto with _$ResendOtpDto {
  const factory ResendOtpDto({
    required String payload,
  }) = _ResendOtpDto;

  const ResendOtpDto._();

  factory ResendOtpDto.fromJson(Map<String, dynamic> json) =>
      _$ResendOtpDtoFromJson(json);
}

@freezed
class ResendOtpResponseDto with _$ResendOtpResponseDto {
  const factory ResendOtpResponseDto({
    required bool auth,
    required dynamic message,
  }) = _ResendOtpResponseDto;

  const ResendOtpResponseDto._();

  factory ResendOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ResendOtpResponseDtoFromJson(json);
}

@freezed
class SuccessfulResendOtpResponseMessageDto
    with _$SuccessfulResendOtpResponseMessageDto {
  const factory SuccessfulResendOtpResponseMessageDto({
    required String info,
    required String payload,
  }) = _SuccessfulResendOtpResponseMessageDto;

  const SuccessfulResendOtpResponseMessageDto._();

  factory SuccessfulResendOtpResponseMessageDto.fromJson(
          Map<String, dynamic> json) =>
      _$SuccessfulResendOtpResponseMessageDtoFromJson(json);
}

@freezed
class VerifyOtpDto with _$VerifyOtpDto {
  const factory VerifyOtpDto({
    required String email,
    required String otp,
    required String payload,
  }) = _VerifyOtpDto;

  const VerifyOtpDto._();

  factory VerifyOtpDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpDtoFromJson(json);
}

@freezed
class VerifyOtpResponseDto with _$VerifyOtpResponseDto {
  const factory VerifyOtpResponseDto({
    required bool auth,
    required dynamic message,
  }) = _VerifyOtpResponseDto;

  const VerifyOtpResponseDto._();

  factory VerifyOtpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseDtoFromJson(json);
}

@freezed
class RegisterResponseDto with _$RegisterResponseDto {
  const factory RegisterResponseDto({
    required bool auth,
    required dynamic message,
  }) = _RegisterResponseDto;

  const RegisterResponseDto._();

  factory RegisterResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseDtoFromJson(json);
}

@freezed
class SuccessfulRegisterResponseMessageDto
    with _$SuccessfulRegisterResponseMessageDto {
  const factory SuccessfulRegisterResponseMessageDto({
    required String info,
    required String payload,
  }) = _SuccessfulRegisterResponseMessageDto;

  const SuccessfulRegisterResponseMessageDto._();

  factory SuccessfulRegisterResponseMessageDto.fromJson(
          Map<String, dynamic> json) =>
      _$SuccessfulRegisterResponseMessageDtoFromJson(json);
}

@freezed
class SuccessfulLoginResponseMessageDto
    with _$SuccessfulLoginResponseMessageDto {
  const factory SuccessfulLoginResponseMessageDto({
    required String name,
    required String email,
    required String token,
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
