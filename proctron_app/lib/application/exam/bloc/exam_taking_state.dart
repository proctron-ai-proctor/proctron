part of 'exam_taking_bloc.dart';

@freezed
@immutable
class ExamTakingState with _$ExamTakingState {
  const factory ExamTakingState({
    required User? user,
    required RTCVideoRenderer localRenderer,
    required RTCVideoRenderer remoteRenderer,
    required bool isInitialSetupDone,
    required bool isMediaReady,
    required bool didExit,
    required bool didFatalErrorOccur,
  }) = _ExamTakingState;

  factory ExamTakingState.initial() => ExamTakingState(
        user: null,
        localRenderer: RTCVideoRenderer(),
        remoteRenderer: RTCVideoRenderer(),
        isInitialSetupDone: false,
        isMediaReady: false,
        didExit: false,
        didFatalErrorOccur: false,
      );
}
