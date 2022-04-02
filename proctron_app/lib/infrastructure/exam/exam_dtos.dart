import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exam_dtos.freezed.dart';
part 'exam_dtos.g.dart';

@freezed
class WrtcCredsDto with _$WrtcCredsDto {
  const factory WrtcCredsDto({
    @Default({}) Map<String, dynamic> sdp,
    @Default({}) Map<String, dynamic> ice,
  }) = _WrtcCredsDto;

  const WrtcCredsDto._();

  factory WrtcCredsDto.fromJson(Map<String, dynamic> json) =>
      _$WrtcCredsDtoFromJson(json);
}

@freezed
class WrtcSdpDto with _$WrtcSdpDto {
  const factory WrtcSdpDto({
    required String sdp,
    required String type,
  }) = _WrtcSdpDto;

  const WrtcSdpDto._();

  factory WrtcSdpDto.fromJson(Map<String, dynamic> json) =>
      _$WrtcSdpDtoFromJson(json);
}

@freezed
class WrtcIceDto with _$WrtcIceDto {
  const factory WrtcIceDto({
    required String candidate,
    required String sdpMid,
    required int sdpMLineIndex,
  }) = _WrtcIceDto;

  const WrtcIceDto._();

  factory WrtcIceDto.fromJson(Map<String, dynamic> json) =>
      _$WrtcIceDtoFromJson(json);
}
