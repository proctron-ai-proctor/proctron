import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:proctron_app/application/exam/bloc/exam_taking_bloc.dart';

class ExamActions extends StatelessWidget {
  const ExamActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final examTakingBloc = BlocProvider.of<ExamTakingBloc>(context);

    return Column(
      children: [
        TextButton(
          onPressed: () => examTakingBloc.add(
            const ExamTakingEvent.startPressed(),
          ),
          child: const Text('Start'),
        ),
        TextButton(
          onPressed: () => examTakingBloc.add(
            const ExamTakingEvent.exitPressed(),
          ),
          child: const Text('Exit'),
        )
      ],
    );
  }
}
