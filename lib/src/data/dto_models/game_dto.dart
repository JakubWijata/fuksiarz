import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuksiarz/src/data/dto_models/outcome_dto.dart';

part 'game_dto.freezed.dart';
part 'game_dto.g.dart';

@freezed
class GameDTO with _$GameDTO {
  const factory GameDTO({
    required int gameId,
    required String gameName,
    List<OutcomeDTO>? outcomes,
  }) = _GameDTO;

  factory GameDTO.fromJson(Map<String, dynamic> json) =>
      _$GameDTOFromJson(json);
}
