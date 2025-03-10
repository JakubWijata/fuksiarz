import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuksiarz/src/data/dto_models/game_dto.dart';
import 'package:fuksiarz/src/data/dto_models/participant_dto.dart';

part 'event_dto.freezed.dart';
part 'event_dto.g.dart';

@freezed
class EventDTO with _$EventDTO {
  const factory EventDTO({
    required int eventId,
    required int category1Id,
    List<ParticipantDTO>? participants,
    List<GameDTO>? eventGames,
    int? eventStart,
    String? eventName,
    String? category3Name,
  }) = _EventDTO;

  factory EventDTO.fromJson(Map<String, dynamic> json) =>
      _$EventDTOFromJson(json);
}
