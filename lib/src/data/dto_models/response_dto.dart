import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_dto.freezed.dart';
part 'response_dto.g.dart';

@freezed
class ResponseDTO<T> with _$ResponseDTO {
  const factory ResponseDTO({
    required int code,
    String? description,
    List<dynamic>? data,
  }) = _ResponseDTO;

  factory ResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ResponseDTOFromJson(json);
}
