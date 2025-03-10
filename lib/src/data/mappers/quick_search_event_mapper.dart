import 'package:fpdart/fpdart.dart';
import 'package:fuksiarz/src/data/dto_models/quick_search_event_dto.dart';
import 'package:fuksiarz/src/data/mappers/event_mapper.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';

extension QuickSearchEventX on QuickSearchEventDTO {
  Event toDomain() => Event(
      eventGames: [],
      eventId: id,
      participants: [],
      categoryType: (extras['CATEGORY_ID_1'] as int).toCategoryDomain(),
      eventName: name ?? '',
      category3Name: extras['CATEGORY_NAME_3'] ?? '',
      eventStart: Some(DateTime.fromMillisecondsSinceEpoch(eventStart)));
}
