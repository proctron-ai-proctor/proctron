import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/auth/email_verification/email_verification_bloc.dart';
import 'package:proctron_app/presentation/core/persistent_loading_wheel.dart';
import 'package:proctron_app/presentation/routes/app_router.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmailVerificationBloc, EmailVerificationState>(
      listener: (context, state) {
        if (state.isLoading) {
          pShowPersistentLoadingWheel(context);
        } else if (state.wasOtpResent) {
          pPopLoadingWheel(context);
          FlushbarHelper.createInformation(
            message: 'OTP successfully resent. Please check your email',
          ).show(context);
        }

        state.otpFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              pPopLoadingWheel(context);

              FlushbarHelper.createError(
                message: failure.map(
                  serverError: (_) =>
                      'A server error occurred. Please try again.',
                  connectionError: (_) =>
                      'An error occurred while connecting to server. Please check your connection.',
                  unknownError: (_) =>
                      'An unknown error occurred. Please try again.',
                  invalidOtp: (_) => 'Provided OTP is invalid.',
                  otpExpired: (_) => 'OTP has expired',
                ),
              ).show(context);
            },
            (_) {
              pPopLoadingWheel(context);

              FlushbarHelper.createInformation(
                message: 'Email Verified successfully!',
              ).show(context);

              AutoRouter.of(context).replace(const AuthRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      OtpFormFields(),
                      OtpFormActions(),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class OtpFormFields extends StatelessWidget {
  const OtpFormFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<EmailVerificationBloc>(context);

        return Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'OTP',
              ),
              autocorrect: false,
              initialValue: bloc.state.otp,
              onChanged: (value) => bloc.add(
                EmailVerificationEvent.otpChanged(value),
              ),
            ),
          ],
        );
      },
    );
  }
}

class OtpFormActions extends StatelessWidget {
  const OtpFormActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmailVerificationBloc, EmailVerificationState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<EmailVerificationBloc>(context);

        return Row(
          children: [
            TextButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                bloc.add(const EmailVerificationEvent.resendOtpPressed());
              },
              child: const Text("Resend"),
            ),
            TextButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                bloc.add(const EmailVerificationEvent.submitPressed());
              },
              child: const Text("Submit"),
            ),
          ],
        );
      },
    );
  }
}
