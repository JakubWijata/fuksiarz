// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outcome_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OutcomeDTOImpl _$$OutcomeDTOImplFromJson(Map<String, dynamic> json) =>
    _$OutcomeDTOImpl(
      outcomeId: (json['outcomeId'] as num).toInt(),
      outcomeName: json['outcomeName'] as String,
      odds: (json['odds'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$OutcomeDTOImplToJson(_$OutcomeDTOImpl instance) =>
    <String, dynamic>{
      'outcomeId': instance.outcomeId,
      'outcomeName': instance.outcomeName,
      'odds': instance.odds,
    };
