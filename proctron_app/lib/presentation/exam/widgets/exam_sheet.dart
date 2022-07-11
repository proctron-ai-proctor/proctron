import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/exam/bloc/exam_taking_bloc.dart';
import 'package:proctron_app/domain/exam/entities.dart';

class ExamSheet extends StatelessWidget {
  const ExamSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ExamTakingBloc>(context);
    return BlocBuilder<ExamTakingBloc, ExamTakingState>(
      builder: (context, state) {
        final questions = state.exam?.questions ?? [];
        debugPrint('questions: ${questions.toString()}');
        return ListView.builder(
          itemCount: questions.length,
          itemBuilder: (context, questionIndex) {
            final question = questions[questionIndex];
            List<Widget> qWidgets = [];
            if (question.qType == QuestionType.mcq) {
              debugPrint('qchoice: $question');
              qWidgets = question.qChoices
                  .map(
                    (choice) => ListTile(
                      leading: question.qAnswer == choice.slot
                          ? const Icon(Icons.radio_button_checked)
                          : const Icon(Icons.radio_button_off),
                      title: Text(choice.text),
                      onTap: () => bloc.add(
                        ExamTakingEvent.answerChanged(
                          questionIndex,
                          choice.slot,
                        ),
                      ),
                    ),
                  )
                  .toList();
            } else {
              qWidgets = [
                TextFormField(
                  onChanged: (answer) => bloc.add(
                    ExamTakingEvent.answerChanged(questionIndex, answer),
                  ),
                ),
              ];
            }

            return ExpansionTile(
              title: Text((questionIndex + 1).toString()),
              initiallyExpanded: true,
              children: [
                Text(question.qText),
                ...qWidgets,
              ],
            );
          },
        );
      },
    );
  }
}
