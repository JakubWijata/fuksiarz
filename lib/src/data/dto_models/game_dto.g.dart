// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameDTOImpl _$$GameDTOImplFromJson(Map<String, dynamic> json) =>
    _$GameDTOImpl(
      gameId: (json['gameId'] as num).toInt(),
      gameName: json['gameName'] as String,
      outcomes: (json['outcomes'] as List<dynamic>?)
          ?.map((e) => OutcomeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GameDTOImplToJson(_$GameDTOImpl instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'gameName': instance.gameName,
      'outcomes': instance.outcomes,
    };
