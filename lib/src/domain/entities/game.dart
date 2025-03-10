import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuksiarz/src/domain/entities/outcome.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required int gameId,
    required String gameName,
    required List<Outcome> outcomes,
  }) = _Game;
}
