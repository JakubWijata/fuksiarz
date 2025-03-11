import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fuksiarz/src/core/failure.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';
import 'package:fuksiarz/src/domain/repositories/i_events_repository.dart';
import 'package:fuksiarz/src/presentation/home/events/events_cubit.dart';
import 'package:mocktail/mocktail.dart';

class MockEventRepository extends Mock implements IEventsRepository {}

void main() {
  final initState = EventsState(
    allEventsCount: 0,
    events: {},
    failure: None(),
    isLoading: false,
  );
  group('EventsCubitTest', () {
    late MockEventRepository mockEventsRepository;
    late EventsCubit eventsCubit;
    final events = [
      Event(
        eventId: 1,
        categoryType: CategoryType.baseball,
        participants: [],
        eventGames: [],
        eventStart: some(DateTime(1999, 19, 19)),
        eventName: 'eventName',
        category3Name: 'category3Name',
      )
    ];
    final failure = Failure('failure');

    setUp(() {
      mockEventsRepository = MockEventRepository();
      eventsCubit = EventsCubit(mockEventsRepository);
    });

    tearDown(() {
      eventsCubit.close();
    });

    test('initial state', () {
      expect(eventsCubit.state, EventsState.initial());
    });

    blocTest<EventsCubit, EventsState>(
      'loading data success',
      build: () => eventsCubit,
      setUp: () => when(
        () => mockEventsRepository.getEvents(
          categories: CategoryType.values,
        ),
      ).thenAnswer(
        (_) async => right(events),
      ),
      verify: (_) {
        verify(
          () => mockEventsRepository.getEvents(
            categories: CategoryType.values,
          ),
        ).called(1);
      },
      act: (cubit) => cubit.loadData(),
      expect: () => [
        initState.copyWith(isLoading: true),
        initState.copyWith(
          isLoading: false,
          allEventsCount: 1,
          events: Map.fromEntries(
            CategoryType.values.map(
              (category) => MapEntry(
                category,
                events.where((e) => e.categoryType == category).toList(),
              ),
            ),
          ),
          failure: none(),
        ),
      ],
    );

    blocTest<EventsCubit, EventsState>(
      'loading data failure',
      build: () => eventsCubit,
      setUp: () => when(
        () => mockEventsRepository.getEvents(
          categories: CategoryType.values,
        ),
      ).thenAnswer((_) async => left(failure)),
      verify: (_) {
        verify(
          () => mockEventsRepository.getEvents(
            categories: CategoryType.values,
          ),
        ).called(1);
      },
      act: (cubit) => cubit.loadData(),
      expect: () => [
        initState.copyWith(isLoading: true),
        initState.copyWith(
          isLoading: false,
          failure: optionOf(failure),
        ),
      ],
    );
  });
}
