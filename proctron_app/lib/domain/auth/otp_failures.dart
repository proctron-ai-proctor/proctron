import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_failures.freezed.dart';

@freezed
class OtpFailure with _$OtpFailure {
  const factory OtpFailure.serverError() = ServerError;
  const factory OtpFailure.invalidOtp() = InvalidOtp;
  const factory OtpFailure.otpExpired() = OtpExpired;
  const factory OtpFailure.connectionError() = ConnectionError;
  const factory OtpFailure.unknownError() = UnknownError;
}
