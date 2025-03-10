import 'package:fpdart/fpdart.dart';
import 'package:fuksiarz/src/core/failure.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';

abstract class IEventsRepository {
  Future<Either<Failure, List<Event>>> getEvents(List<CategoryType> categories);
  Future<Either<Failure, List<Event>>> searchEvents(
    String query,
    String languageCode,
  );
}
