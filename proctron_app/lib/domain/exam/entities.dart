import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entities.freezed.dart';

@freezed
class Exam extends Equatable with _$Exam {
  const factory Exam({
    required String id,
    required List<Question> questions,
    required DateTime createdOn,
  }) = _Exam;

  const Exam._();

  @override
  List<Object?> get props => [id, questions, createdOn];
}

@freezed
class Question extends Equatable with _$Question {
  const factory Question({
    required int qId,
    required String qText,
    required QuestionType qType,
    required dynamic qAnswer,
    required List<QuestionChoice> qChoices,
  }) = _Question;

  const Question._();

  @override
  List<Object?> get props => [qId, qText, qType, qAnswer, qChoices];
}

enum QuestionType { mcq, short, long }

@freezed
class QuestionChoice with _$QuestionChoice {
  const factory QuestionChoice({
    required int slot,
    required String text,
  }) = _QuestionChoice;

  const QuestionChoice._();
}
