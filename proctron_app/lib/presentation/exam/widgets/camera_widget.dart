import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:proctron_app/application/exam/bloc/exam_taking_bloc.dart';

class CameraWidget extends StatelessWidget {
  const CameraWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<ExamTakingBloc, ExamTakingState>(
            bloc: BlocProvider.of<ExamTakingBloc>(context),
            builder: (context, state) {
              if (state.isMediaReady) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Camera:'),
                    Expanded(
                      child: RTCVideoView(
                        state.localRenderer,
                        mirror: true,
                      ),
                    ),
                  ],
                );
              } else {
                return const Text('Press start to begin..');
              }
            },
          ),
          // Expanded(child: RTCVideoView(_remoteRenderer)),
        ],
      ),
    );
  }
}
