import 'package:fpdart/fpdart.dart';
import 'package:fuksiarz/src/core/failure.dart';
import 'package:fuksiarz/src/data/data_sources/events_data_sources.dart';
import 'package:fuksiarz/src/data/mappers/event_mapper.dart';
import 'package:fuksiarz/src/data/mappers/quick_search_event_mapper.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';
import 'package:fuksiarz/src/domain/repositories/i_events_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IEventsRepository)
class EventsRepository implements IEventsRepository {
  final IEventsDataSource _dataSource;

  EventsRepository(
    this._dataSource,
  );

  @override
  Future<Either<Failure, List<Event>>> getEvents(
      List<CategoryType> categories) async {
    try {
      final result = await _dataSource.getEvents(
        categories.map((e) => e.id).toList(),
      );

      return result.fold(
        left,
        (events) {
          return right(events.map((e) => e.toDomain()).toList());
        },
      );
    } catch (e) {
      return left(Failure('Error  getting events: $e'));
    }
  }

  @override
  Future<Either<Failure, List<Event>>> searchEvents(
    String query,
    String languageCode,
  ) async {
    try {
      final result = await _dataSource.search(query, languageCode);

      return result.fold(
        left,
        (events) {
          return right(events.map((e) => e.toDomain()).toList());
        },
      );
    } catch (e) {
      return left(Failure('Error  getting events: $e'));
    }
  }
}
