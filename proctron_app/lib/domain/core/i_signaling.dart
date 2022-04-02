import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:socket_io_client/socket_io_client.dart';

abstract class ISignaling {
  void setSocket(Socket socket);
  Future<void> createRoom();
  Future<void> openUserMedia(
    RTCVideoRenderer localVideo,
    RTCVideoRenderer remoteVideo,
  );
  Future<void> hangUp(RTCVideoRenderer localVideo);
}
