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
        ]
      }
    ]
  };

  RTCPeerConnection? _peerConnection;
  MediaStream? _localStream;
  MediaStream? _remoteStream;
  List<RTCIceCandidate> _remoteIceCandidates = [];
  StreamStateCallback? _onAddRemoteStream;
  Socket? _socket;

  @override
  void setSocket(Socket socket) {
    _socket = socket;
  }

  @override
  Future<void> createRoom() async {
    debugPrint('Creating peer connection with config:\n$configuration');

    _peerConnection = await createPeerConnection(configuration);
    _registerPeerConnectionListeners();

    _localStream?.getTracks().forEach((track) {
      debugPrint('adding local stream track');
      _peerConnection?.addTrack(track, _localStream!);
      _drainRemoteIce();
    });

    _peerConnection?.onIceCandidate = (iceCandidate) {
      _socket?.emit('exam/credentials', {
        'ice': {
          'candidate': iceCandidate.candidate,
          'sdpMid': iceCandidate.sdpMid,
          'sdpMLineIndex': iceCandidate.sdpMLineIndex,
        }
      });
    };

    final offer = await _peerConnection!.createOffer();
    _peerConnection!.setLocalDescription(offer);
    debugPrint('Offer created');
    _socket?.emit(
      'exam/credentials',
      {'sdp': offer.toMap()},
    );

    _peerConnection?.onTrack = (remoteTrack) {
      // TODO: do something with remote track
    };

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

        if (sdpDto.type == 'offer') {
          final answer = await _peerConnection!.createAnswer();
          await _peerConnection?.setLocalDescription(answer);
          _socket?.emit(
            'exam/credentials',
            {'sdp': (await _peerConnection!.getLocalDescription())?.toMap()},
          );
        }
      } else if (credsDto.ice.isNotEmpty) {
        final iceDto = WrtcIceDto.fromJson(credsDto.ice);
        _remoteIceCandidates.add(
          RTCIceCandidate(
            iceDto.candidate,
            iceDto.sdpMid,
            iceDto.sdpMLineIndex,
          ),
        );
        _drainRemoteIce();
      }
    });
  }

  @override
  Future<void> openUserMedia(
    RTCVideoRenderer localVideo,
    RTCVideoRenderer remoteVideo,
  ) async {
    final stream = await navigator.mediaDevices
        .getUserMedia({'video': true, 'audio': true});

    await localVideo.initialize().then((value) {
      localVideo.srcObject = stream;
      _localStream = stream;
    });

    // remoteVideo.srcObject = await createLocalMediaStream('key');
  }

  @override
  Future<void> hangUp(RTCVideoRenderer localVideo) async {
    final tracks = localVideo.srcObject?.getAudioTracks();
    for (final track in tracks ?? <MediaStreamTrack>[]) {
      track.stop();
    }

    if (_remoteStream != null) {
      _remoteStream!.getTracks().forEach((track) => track.stop());
    }

    if (_peerConnection != null) {
      _peerConnection!.close();
    }

    _localStream?.dispose();
    _remoteStream?.dispose();
    _socket?.disconnect();
    _socket?.close();
  }

  void _drainRemoteIce() async {
    for (final iceCandidate in _remoteIceCandidates) {
      await _peerConnection!.addCandidate(iceCandidate);
    }
    _remoteIceCandidates = [];
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
}
