part of 'email_verification_bloc.dart';

@freezed
class EmailVerificationEvent with _$EmailVerificationEvent {
  const factory EmailVerificationEvent.otpChanged(String otpStr) = OtpChanged;
  const factory EmailVerificationEvent.resendOtpPressed() = ResendOtpPressed;
  const factory EmailVerificationEvent.otpResent() = OtpResent;
  const factory EmailVerificationEvent.submitPressed() = SubmitPressed;
  const factory EmailVerificationEvent.otpVerified(
    Either<OtpFailure, Unit> otpFailureOrSuccess,
  ) = OtpVerified;
}
