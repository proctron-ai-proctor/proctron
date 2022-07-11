part of 'exam_taking_bloc.dart';

@freezed
@immutable
class ExamTakingState extends Equatable with _$ExamTakingState {
  const factory ExamTakingState({
    required User? user,
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
    required bool isInitialSetupDone,
    required bool isMediaReady,
    required bool hasExamStarted,
    required bool didExit,
    required bool didFatalErrorOccur,
    required Exam? exam,
  }) = _ExamTakingState;

  factory ExamTakingState.initial() => ExamTakingState(
        user: null,
        localRenderer: RTCVideoRenderer(),
        remoteRenderer: RTCVideoRenderer(),
        isInitialSetupDone: false,
        isMediaReady: false,
        hasExamStarted: false,
        didExit: false,
        didFatalErrorOccur: false,
        exam: null,
      );

  const ExamTakingState._();

  @override
  List<Object?> get props => [exam];
}
