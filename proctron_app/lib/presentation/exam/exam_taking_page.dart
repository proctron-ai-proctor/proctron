import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/auth/auth_bloc.dart';
import 'package:proctron_app/application/exam/bloc/exam_taking_bloc.dart';
import 'package:proctron_app/injection.dart';
import 'package:proctron_app/presentation/core/persistent_loading_wheel.dart';
import 'package:proctron_app/presentation/exam/widgets/camera_widget.dart';
import 'package:proctron_app/presentation/exam/widgets/exam_actions.dart';
import 'package:proctron_app/presentation/routes/app_router.dart';

class ExamTakingPage extends StatelessWidget {
  const ExamTakingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      resizeToAvoidBottomInset: true,
      body: BlocProvider<ExamTakingBloc>(
        create: (context) =>
            getIt<ExamTakingBloc>()..add(const ExamTakingEvent.opened()),
        child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.map(
                  initial: (_) => null,
                  loading: (_) => null,
                  authenticated: (_) => null,
                  unauthenticated: (_) {
                    AutoRouter.of(context).replace(const AuthRoute());
                  },
                );
              },
            ),
            BlocListener<ExamTakingBloc, ExamTakingState>(
              listener: (context, state) {
                pPopLoadingWheel(context);

                // TODO: implement listener
                if (state.didExit) {
                  debugPrint('EXITING');
                  AutoRouter.of(context).replace(const SplashRoute());
                }
                if (!state.isInitialSetupDone) {
                  pShowPersistentLoadingWheel(context, text: 'Setting up..');
                }
              },
            ),
          ],
          child: Center(
            child: Column(
              children: const [
                CameraWidget(),
                ExamActions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
