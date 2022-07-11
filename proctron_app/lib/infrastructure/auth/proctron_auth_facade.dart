import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:proctron_app/domain/auth/auth_failures.dart';
import 'package:proctron_app/domain/auth/i_auth_facade.dart';
import 'package:proctron_app/domain/auth/otp_failures.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';
import 'package:proctron_app/domain/user/entities.dart';
import 'package:proctron_app/infrastructure/auth/auth_dtos.dart';
import 'package:proctron_app/infrastructure/core/address_module.dart';
import 'package:proctron_app/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthFacade)
class ProctronAuthFacade implements IAuthFacade {
  final _authUrl =
      getIt.get<Address>(instanceName: Address.keyExamServer).toString();
  final _registerEndpoint = "users/register";
  final _loginEndpoint = "users/login";
  final _otpVerificationEndpoint = "users/verify-otp";
  final _resendOtpEndpoint = "users/resend-otp";

  @override
  Future<Either<AuthFailure, User>> registerWithCredentials({
    required Username username,
    required EmailAddress emailAddress,
    required Password password,
    required Role role,
  }) async {
    final usernameStr = username.getOrCrash();
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      final registerUrl = Uri.http(_authUrl, _registerEndpoint);
      final registerDto = RegisterDto(
        name: usernameStr,
        email: emailStr,
        password: passwordStr,
        role: role,
      );

      debugPrint('url: ${registerUrl.toString()}');
      final response = await http.post(
        registerUrl,
        body: registerDto.toJson(),
      );
      final registerResponseDto = RegisterResponseDto.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      debugPrint('status: ${response.statusCode.toString()}');
      switch (response.statusCode) {
        // 200
        case HttpStatus.ok:
          final respMessageDto = SuccessfulRegisterResponseMessageDto.fromJson(
            registerResponseDto.message as Map<String, dynamic>,
          );
          return right(User(
            username: username,
            emailAddress: emailAddress,
            role: role,
            token: '',
            tokenExpirationTime: DateTime.now(),
            otpVerificationPayload: respMessageDto.payload,
          ));
        // 409
        case HttpStatus.conflict:
          return left(const AuthFailure.emailAlreadyRegistered());
        // 500
        case HttpStatus.internalServerError:
          return left(const AuthFailure.serverError());

        default:
          debugPrint(
            'Unkown status code was received during user registration: ${response.statusCode}',
          );
          return left(const AuthFailure.unknownError());
      }
    } on TimeoutException {
      debugPrint('timed out');
      return left(const AuthFailure.connectionError());
    } on SocketException {
      debugPrint('socket exception');
      return left(const AuthFailure.connectionError());
    } catch (e) {
      debugPrint(
        "Exception during user registration: $e",
      );
      return left(const AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<AuthFailure, User>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final loginUrl = Uri.http(_authUrl, _loginEndpoint);
      final loginDto = LoginDto(
        email: emailStr,
        password: passwordStr,
      );

      final response = await http.post(
        loginUrl,
        body: loginDto.toJson(),
      );
      final loginResponseDto = LoginResponseDto.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      debugPrint('status: ${response.statusCode.toString()}');
      switch (response.statusCode) {
        // 200
        case HttpStatus.ok:
          final respMessageDto = SuccessfulLoginResponseMessageDto.fromJson(
            loginResponseDto.message as Map<String, dynamic>,
          );
          final user = User(
            username: Username(respMessageDto.name),
            emailAddress: EmailAddress(respMessageDto.email),
            role: respMessageDto.role,
            token: respMessageDto.token,
            tokenExpirationTime: DateTime.now().add(const Duration(days: 1)),
            otpVerificationPayload: '',
          );
          return right(user);
        // 401
        case HttpStatus.unauthorized:
        // 404
        case HttpStatus.notFound:
          return left(const AuthFailure.invalidEmailAndPasswordCombination());
        // 500
        case HttpStatus.internalServerError:
          return left(const AuthFailure.serverError());

        default:
          debugPrint(
            "Unkown status code was received during user login: ${response.statusCode}",
          );
          return left(const AuthFailure.unknownError());
      }
    } on TimeoutException catch (e) {
      debugPrint(e.toString());
      return left(const AuthFailure.connectionError());
    } on SocketException catch (e) {
      debugPrint(e.toString());
      return left(const AuthFailure.connectionError());
    } catch (e) {
      debugPrint(
        "Exception during user login: $e",
      );
      return left(const AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<OtpFailure, Unit>> resendOtp({
    required String payload,
    required Function(String) onResend,
  }) async {
    try {
      final resendOtpUrl = Uri.http(_authUrl, _resendOtpEndpoint);
      final verifyOtpDto = ResendOtpDto(
        payload: payload,
      );

      final response = await http.post(
        resendOtpUrl,
        body: verifyOtpDto.toJson(),
      );
      final resendOtpResponseDto = ResendOtpResponseDto.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );

      switch (response.statusCode) {
        case HttpStatus.ok:
          final respMessageDto = SuccessfulResendOtpResponseMessageDto.fromJson(
            resendOtpResponseDto.message as Map<String, dynamic>,
          );
          onResend(respMessageDto.payload);
          return right(unit);
        case HttpStatus.internalServerError:
          return left(const OtpFailure.serverError());
        default:
          debugPrint(
            "Unkown status code was received during otp verification: ${response.statusCode}",
          );
          return left(const OtpFailure.unknownError());
      }
    } on TimeoutException catch (e) {
      debugPrint(e.toString());
      return left(const OtpFailure.connectionError());
    } on SocketException catch (e) {
      debugPrint(e.toString());
      return left(const OtpFailure.connectionError());
    } catch (e) {
      debugPrint(
        "Exception during otp verification: $e",
      );
      return left(const OtpFailure.unknownError());
    }
  }

  @override
  Future<Either<OtpFailure, Unit>> verifyOtp({
    required String email,
    required String otp,
    required String payload,
  }) async {
    try {
      final otpVerificationUrl = Uri.http(_authUrl, _otpVerificationEndpoint);
      final verifyOtpDto = VerifyOtpDto(
        email: email,
        otp: otp,
        payload: payload,
      );

      final response = await http.post(
        otpVerificationUrl,
        body: verifyOtpDto.toJson(),
      );
      final verifyOtpResponseDto = VerifyOtpResponseDto.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );

      switch (response.statusCode) {
        case HttpStatus.ok:
          return right(unit);
        case HttpStatus.badRequest:
          if ((verifyOtpResponseDto.message as String)
                  .toLowerCase()
                  .compareTo('otp expired') ==
              0) {
            return left(const OtpFailure.otpExpired());
          } else {
            return left(const OtpFailure.invalidOtp());
          }
        case HttpStatus.internalServerError:
          return left(const OtpFailure.serverError());
        default:
          debugPrint(
            "Unkown status code was received during otp verification: ${response.statusCode}",
          );
          return left(const OtpFailure.unknownError());
      }
    } on TimeoutException catch (e) {
      debugPrint(e.toString());
      return left(const OtpFailure.connectionError());
    } on SocketException catch (e) {
      debugPrint(e.toString());
      return left(const OtpFailure.connectionError());
    } catch (e) {
      debugPrint(
        "Exception during otp verification: $e",
      );
      return left(const OtpFailure.unknownError());
    }
  }

  @override
  Future<void> signOut() async {
    final prefs = await getIt.getAsync<SharedPreferences>();

    prefs.remove(User.usernameKey);
    prefs.remove(User.emailKey);
    prefs.remove(User.tokenKey);
    prefs.remove(User.tokenExpirationTimeKey);
  }
}
