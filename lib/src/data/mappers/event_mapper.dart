import 'package:fpdart/fpdart.dart';
import 'package:fuksiarz/src/data/dto_models/event_dto.dart';
import 'package:fuksiarz/src/data/dto_models/game_dto.dart';
import 'package:fuksiarz/src/data/dto_models/outcome_dto.dart';
import 'package:fuksiarz/src/data/dto_models/participant_dto.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';
import 'package:fuksiarz/src/domain/entities/game.dart';
import 'package:fuksiarz/src/domain/entities/outcome.dart';
import 'package:fuksiarz/src/domain/entities/participant.dart';

extension ParticipantX on ParticipantDTO {
  Participant toDomain() => Participant(participantName: name ?? '');
}

extension OutcomeX on OutcomeDTO {
  Outcome toDomain() => Outcome(
        odds: optionOf(odds),
        outcomeId: outcomeId,
        outcomeName: outcomeName,
      );
}

extension GameX on GameDTO {
  Game toDomain() => Game(
        gameId: gameId,
        gameName: gameName,
        outcomes: outcomes?.map((e) => e.toDomain()).toList() ?? [],
      );
}

extension CategoryTypeX on int {
  CategoryType toCategoryDomain() => CategoryType.values.firstWhere(
        (value) => value.id == this,
        orElse: () => throw UnsupportedError('unsupported category type'),
      );
}

extension EventX on EventDTO {
  Event toDomain() => Event(
        eventGames: eventGames?.map((e) => e.toDomain()).toList() ?? [],
        eventId: eventId,
        participants: participants?.map((e) => e.toDomain()).toList() ?? [],
        categoryType: category1Id.toCategoryDomain(),
        eventName: eventName ?? '',
        category3Name: category3Name ?? '',
        eventStart: eventStart != null
            ? Some(DateTime.fromMillisecondsSinceEpoch(eventStart!))
            : None(),
      );
}
