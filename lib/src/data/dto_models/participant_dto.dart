import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_dto.freezed.dart';
part 'participant_dto.g.dart';

@freezed
class ParticipantDTO with _$ParticipantDTO {
  const factory ParticipantDTO({
    required String? name,
  }) = _ParticipantDTO;

  factory ParticipantDTO.fromJson(Map<String, dynamic> json) =>
      _$ParticipantDTOFromJson(json);
}
