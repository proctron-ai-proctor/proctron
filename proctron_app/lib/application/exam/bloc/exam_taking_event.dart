part of 'exam_taking_bloc.dart';

@freezed
@immutable
class ExamTakingEvent with _$ExamTakingEvent {
  const factory ExamTakingEvent.opened() = Opened;
  const factory ExamTakingEvent.openMediaPressed() = OpenMediaPressed;
  const factory ExamTakingEvent.createRoomPressed() = CreateRoomPressed;
  const factory ExamTakingEvent.exitPressed() = ExitPressed;

  const factory ExamTakingEvent.socketConnected() = SocketConnected;
  const factory ExamTakingEvent.socketDisconnected() = SocketDisconnected;
  const factory ExamTakingEvent.socketErrorOccurred() = SocketErrorOccurred;
}
