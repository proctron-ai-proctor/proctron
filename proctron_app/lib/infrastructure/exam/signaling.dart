import 'dart:collection';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:proctron_app/domain/core/i_signaling.dart';
import 'package:proctron_app/infrastructure/exam/exam_dtos.dart';
import 'package:socket_io_client/socket_io_client.dart';

typedef StreamStateCallback = void Function(MediaStream stream);

@LazySingleton(as: ISignaling)
class Signaling implements ISignaling {
  Map<String, dynamic> configuration = {
    'iceServers': [
      {
        'urls': [
          'stun:stun1.l.google.com:19302',
          'stun:stun2.l.google.com:19302'
        ],
      },
      {
        'urls': 'turn:openrelay.metered.ca:80',
        'username': 'openrelayproject',
        'credential': 'openrelayproject',
      },
      {
        'urls': 'turn:openrelay.metered.ca:80?transport=tcp',
        'username': 'openrelayproject',
        'credential': 'openrelayproject',
      },
      {
        'urls': 'turn:openrelay.metered.ca:443',
        'username': 'openrelayproject',
        'credential': 'openrelayproject',
      },
      {
        'urls': 'turn:openrelay.metered.ca:443?transport=tcp',
        'username': 'openrelayproject',
        'credential': 'openrelayproject',
      },
    ]
  };

  RTCPeerConnection? _peerConnection;
  MediaStream? _localStream;
  MediaStream? _remoteStream;
  StreamStateCallback? _onAddRemoteStream;
  Socket? _socket;

  final Map<String, dynamic> _constraints = {
    'mandatory': {
      'OfferToReceiveAudio': false,
      'OfferToReceiveVideo': false,
    },
    'optional': [],
  };

  @override
  void setSocket(Socket socket) {
    _socket = socket;
  }

  @override
  Future<void> createRoom() async {
    debugPrint('Creating peer connection with config:\n$configuration');
    _peerConnection = await createPeerConnection(configuration);
    _registerPeerConnectionListeners();
    _registerLocalIceListener();
    _addLocalStreamTracks();
    _registerRemoteIceAndAnswerListener();
    await _createAndSendOffer();
  }

  @override
  Future<void> openUserMedia(
    RTCVideoRenderer localVideo,
    RTCVideoRenderer remoteVideo,
  ) async {
    final stream = await navigator.mediaDevices.getUserMedia({
      'audio': true,
      'video': true,
    });

    // If not disabled, feedback loop occurs in audio on some devices
    stream.getAudioTracks().forEach((track) {
      track.enableSpeakerphone(false);
    });

    await localVideo.initialize().then((value) {
      localVideo.srcObject = stream;
      _localStream = stream;
    });

    // remoteVideo.srcObject = await createLocalMediaStream('key');
  }

  @override
  Future<void> hangUp(RTCVideoRenderer localVideo) async {
    _localStream?.getTracks().forEach((track) => track.stop());
    // _remoteStream?.getTracks().forEach((track) => track.stop());

    if (_peerConnection != null) {
      _peerConnection?.close();
      _socket?.emit('exam/stop');
    }

    _localStream?.dispose();
    _remoteStream?.dispose();
    _socket?.disconnect();
    _socket?.close();
  }

  void _registerPeerConnectionListeners() {
    _peerConnection?.onIceGatheringState = (RTCIceGatheringState state) {
      debugPrint('ICE gathering state changed: $state');
    };

    _peerConnection?.onConnectionState = (RTCPeerConnectionState state) {
      debugPrint('Connection state change: $state');
    };

    _peerConnection?.onSignalingState = (RTCSignalingState state) {
      debugPrint('Signaling state change: $state');
    };

    _peerConnection?.onIceGatheringState = (RTCIceGatheringState state) {
      debugPrint('ICE connection state change: $state');
    };

    _peerConnection?.onAddStream = (MediaStream stream) {
      debugPrint("Add remote stream");
      _onAddRemoteStream?.call(stream);
      _remoteStream = stream;
    };
  }

  void _registerLocalIceListener() {
    _peerConnection?.onIceCandidate = (iceCandidate) {
      _socket?.emit('exam/credentials', {
        'ice': {
          'candidate': iceCandidate.candidate,
          'sdpMid': iceCandidate.sdpMid,
          'sdpMLineIndex': iceCandidate.sdpMLineIndex,
        }
      });
    };
  }

  void _addLocalStreamTracks() {
    _localStream?.getTracks().forEach((track) {
      debugPrint('adding local stream track');
      _peerConnection?.addTrack(track, _localStream!);
    });
  }

  void _registerRemoteIceAndAnswerListener() {
    _socket?.on('credentials', (creds) async {
      final credsDto = WrtcCredsDto.fromJson(creds as Map<String, dynamic>);
      if (credsDto.sdp.isNotEmpty) {
        final sdpDto = WrtcSdpDto.fromJson(credsDto.sdp);
        debugPrint('Answer received');
        await _peerConnection?.setRemoteDescription(
          RTCSessionDescription(
            sdpDto.sdp,
            sdpDto.type,
          ),
        );
      } else if (credsDto.ice.isNotEmpty) {
        final iceDto = WrtcIceDto.fromJson(credsDto.ice);
        await _peerConnection?.addCandidate(
          RTCIceCandidate(
            iceDto.candidate,
            iceDto.sdpMid,
            iceDto.sdpMLineIndex,
          ),
        );
      }
    });
  }

  Future<void> _createAndSendOffer() async {
    final offer = await _peerConnection!.createOffer(_constraints);
    _peerConnection!.setLocalDescription(offer);
    debugPrint('Offer created');
    _socket?.emit(
      'exam/start',
      {'offer': offer.toMap()},
    );
  }
}
