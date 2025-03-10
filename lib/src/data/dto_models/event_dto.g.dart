// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventDTOImpl _$$EventDTOImplFromJson(Map<String, dynamic> json) =>
    _$EventDTOImpl(
      eventId: (json['eventId'] as num).toInt(),
      category1Id: (json['category1Id'] as num).toInt(),
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => ParticipantDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventGames: (json['eventGames'] as List<dynamic>?)
          ?.map((e) => GameDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventStart: (json['eventStart'] as num?)?.toInt(),
      eventName: json['eventName'] as String?,
      category3Name: json['category3Name'] as String?,
    );

Map<String, dynamic> _$$EventDTOImplToJson(_$EventDTOImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'category1Id': instance.category1Id,
      'participants': instance.participants,
      'eventGames': instance.eventGames,
      'eventStart': instance.eventStart,
      'eventName': instance.eventName,
      'category3Name': instance.category3Name,
    };
