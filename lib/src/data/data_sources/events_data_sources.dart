import 'package:fpdart/fpdart.dart';
import 'package:fuksiarz/src/core/failure.dart';
import 'package:fuksiarz/src/data/dto_models/event_dto.dart';
import 'package:fuksiarz/src/data/dto_models/quick_search_event_dto.dart';
import 'package:fuksiarz/src/data/network/api_client.dart';
import 'package:injectable/injectable.dart';

abstract class IEventsDataSource {
  Future<Either<Failure, List<EventDTO>>> getEvents({
    required List<int> categoriesId,
  });
  Future<Either<Failure, List<QuickSearchEventDTO>>> search({
    required String query,
    required String languageCode,
  });
}

@LazySingleton(as: IEventsDataSource)
class EventsDataSource extends IEventsDataSource {
  EventsDataSource(this._api);
  final ApiClient _api;

  @override
  Future<Either<Failure, List<EventDTO>>> getEvents({
    required List<int> categoriesId,
  }) async {
    final response = await _api.getEvents(categoriesId.join(','));
    if (response.code >= 200 && response.code < 300) {
      return right(
        response.data
                ?.map((e) => EventDTO.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
      );
    } else {
      return left(Failure(response.description ?? ''));
    }
  }

  @override
  Future<Either<Failure, List<QuickSearchEventDTO>>> search({
    required String query,
    required String languageCode,
  }) async {
    final response = await _api.search({
      "areas": ["PREMATCH_EVENT", "CATEGORY"],
      "languageCode": languageCode,
      "limit": "20",
      "mergeLanguages": 1,
      "modes": ["INFIX"],
      "pattern": query
    });
    if (response.code >= 200 && response.code < 300) {
      return right(
        response.data
                ?.map((e) =>
                    QuickSearchEventDTO.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
      );
    } else {
      return left(Failure(response.description ?? ''));
    }
  }
}
