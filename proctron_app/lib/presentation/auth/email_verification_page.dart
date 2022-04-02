import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/auth/email_verification/email_verification_bloc.dart';
import 'package:proctron_app/injection.dart';
import 'package:proctron_app/presentation/auth/widgets/otp_form.dart';

class EmailVerificationPage extends StatelessWidget {
  const EmailVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Verification'),
      ),
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.translucent,
        child: BlocProvider(
          create: (context) => getIt<EmailVerificationBloc>(),
          child: const OtpForm(),
        ),
      ),
    );
  }
}
