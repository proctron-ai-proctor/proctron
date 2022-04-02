part of 'email_verification_bloc.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState({
    required String otp,
    required bool isLoading,
    required bool wasOtpResent,
    required bool showErrorMessages,
    required Option<Either<OtpFailure, Unit>> otpFailureOrSuccessOption,
    required bool didFatalErrorOccur,
  }) = _EmailVerificationState;

  factory EmailVerificationState.initial() => EmailVerificationState(
        otp: '',
        isLoading: false,
        wasOtpResent: false,
        showErrorMessages: false,
        otpFailureOrSuccessOption: none(),
        didFatalErrorOccur: false,
      );
}
