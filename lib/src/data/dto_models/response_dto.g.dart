// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDTOImpl<T> _$$ResponseDTOImplFromJson<T>(Map<String, dynamic> json) =>
    _$ResponseDTOImpl<T>(
      code: (json['code'] as num).toInt(),
      description: json['description'] as String?,
      data: json['data'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ResponseDTOImplToJson<T>(
        _$ResponseDTOImpl<T> instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'data': instance.data,
    };
