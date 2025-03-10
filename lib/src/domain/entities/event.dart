import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/domain/entities/game.dart';
import 'package:fuksiarz/src/domain/entities/participant.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int eventId,
    required CategoryType categoryType,
    required List<Participant> participants,
    required List<Game> eventGames,
    required Option<DateTime> eventStart,
    required String eventName,
    required String category3Name,
  }) = _Event;
}
