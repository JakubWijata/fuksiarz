// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_search_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuickSearchEventDTOImpl _$$QuickSearchEventDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$QuickSearchEventDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      type: (json['type'] as num).toInt(),
      eventStart: (json['eventStart'] as num).toInt(),
      extras: json['extras'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$QuickSearchEventDTOImplToJson(
        _$QuickSearchEventDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'eventStart': instance.eventStart,
      'extras': instance.extras,
    };
