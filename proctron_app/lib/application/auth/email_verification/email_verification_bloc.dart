import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:proctron_app/domain/auth/i_auth_facade.dart';
import 'package:proctron_app/domain/auth/otp_failures.dart';
import 'package:proctron_app/domain/user/entities.dart';
import 'package:proctron_app/domain/user/i_user_repository.dart';

part 'email_verification_bloc.freezed.dart';
part 'email_verification_event.dart';
part 'email_verification_state.dart';

@injectable
class EmailVerificationBloc
    extends Bloc<EmailVerificationEvent, EmailVerificationState> {
  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  EmailVerificationBloc(this._authFacade, this._userRepository)
      : super(EmailVerificationState.initial()) {
    on<EmailVerificationEvent>(
      (event, emit) => event.map(
        otpChanged: (e) => emit(
          state.copyWith(
            otp: e.otpStr,
            wasOtpResent: false,
            otpFailureOrSuccessOption: none(),
          ),
        ),
        resendOtpPressed: (e) => _performAuthFacadeResendOtp(emit),
        otpResent: (e) => _notifyOtpResent(emit),
        submitPressed: (e) => _performAuthFacadeOtpVerification(emit),
        otpVerified: (e) => _notifyOtpVerified(emit, e.otpFailureOrSuccess),
      ),
    );
  }

  Future<void> _performAuthFacadeResendOtp(
    Emitter<EmailVerificationState> emit,
  ) async {
    Either<OtpFailure, Unit> otpFailureOrSuccess;

    emit(
      state.copyWith(
        isLoading: true,
        wasOtpResent: false,
        otpFailureOrSuccessOption: none(),
      ),
    );

    (await _userRepository.getUnverifiedUserDetails()).fold(
      () => emit(
        state.copyWith(
          isLoading: false,
          didFatalErrorOccur: true,
        ),
      ),
      (unverifiedUser) async {
        await _authFacade.resendOtp(
          payload: unverifiedUser.otpVerificationPayload,
          onResend: (String newPayload) async {
            final updatedUnverifiedUser =
                unverifiedUser.copyWith(otpVerificationPayload: newPayload);
            await _userRepository
                .saveUnverifiedUserDetails(updatedUnverifiedUser);

            add(const EmailVerificationEvent.otpResent());
          },
        );
      },
    );
  }

  Future<void> _notifyOtpResent(Emitter<EmailVerificationState> emit) async {
    emit(
      state.copyWith(
        isLoading: false,
        showErrorMessages: true,
        wasOtpResent: true,
        // no need to change the UI at this point
        otpFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _performAuthFacadeOtpVerification(
    Emitter<EmailVerificationState> emit,
  ) async {
    final otp = state.otp;

    Either<OtpFailure, Unit> otpFailureOrSuccess;

    emit(
      state.copyWith(
        isLoading: true,
        otpFailureOrSuccessOption: none(),
      ),
    );

    (await _userRepository.getUnverifiedUserDetails()).fold(
      () => emit(
        state.copyWith(
          isLoading: false,
          didFatalErrorOccur: true,
        ),
      ),
      (unverifiedUser) async {
        otpFailureOrSuccess = await _authFacade.verifyOtp(
          email: unverifiedUser.emailAddress.getOrCrash(),
          otp: otp,
          payload: unverifiedUser.otpVerificationPayload,
        );

        add(EmailVerificationEvent.otpVerified(otpFailureOrSuccess));
      },
    );
  }

  Future<void> _notifyOtpVerified(
    Emitter<EmailVerificationState> emit,
    Either<OtpFailure, Unit> otpFailureOrSuccess,
  ) async {
    emit(
      state.copyWith(
        isLoading: false,
        showErrorMessages: true,
        otpFailureOrSuccessOption: optionOf(otpFailureOrSuccess),
      ),
    );
  }
}
