import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fuksiarz/src/core/failure.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';
import 'package:fuksiarz/src/domain/repositories/i_events_repository.dart';
import 'package:fuksiarz/src/presentation/search_screen/search_events_cubit/search_events_cubit.dart';
import 'package:mocktail/mocktail.dart';

class MockEventRepository extends Mock implements IEventsRepository {}

void main() {
  group('SearchEventsCubitTest', () {
    late MockEventRepository mockEventsRepository;
    late SearchEventsCubit searchCubit;
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
      searchCubit = SearchEventsCubit(mockEventsRepository);
    });

    tearDown(() {
      searchCubit.close();
    });

    test('initial state', () {
      expect(
        searchCubit.state,
        SearchEventsState(
          events: [],
          failure: none(),
          isLoading: false,
          query: '',
        ),
      );
    });

    blocTest<SearchEventsCubit, SearchEventsState>(
      'loading data success',
      build: () => searchCubit,
      setUp: () => when(
        () => mockEventsRepository.searchEvents(
          query: 'pilk',
          languageCode: 'pl',
        ),
      ).thenAnswer((_) async => right(events)),
      verify: (_) {
        verify(
          () => mockEventsRepository.searchEvents(
            query: 'pilk',
            languageCode: 'pl',
          ),
        ).called(1);
      },
      act: (cubit) async {
        cubit.searchEvents(
          query: 'pilk',
          languageCode: 'pl',
        );
        await Future.delayed(Duration(seconds: 1));
      },
      expect: () => [
        SearchEventsState(
          events: [],
          failure: none(),
          isLoading: true,
          query: 'pilk',
        ),
        SearchEventsState(
          events: events,
          failure: none(),
          isLoading: false,
          query: 'pilk',
        ),
      ],
    );
    blocTest<SearchEventsCubit, SearchEventsState>(
      'skip query shorter than 3',
      build: () => searchCubit,
      setUp: () => when(
        () => mockEventsRepository.searchEvents(
          query: 'pil',
          languageCode: 'pl',
        ),
      ).thenAnswer(
        (_) async => right(events),
      ),
      verify: (_) {
        verifyNever(
          () => mockEventsRepository.searchEvents(
            query: 'pil',
            languageCode: 'pl',
          ),
        );
      },
      act: (cubit) async {
        cubit.searchEvents(
          query: 'pil',
          languageCode: 'pl',
        );
        await Future.delayed(Duration(seconds: 1));
      },
      expect: () => [
        SearchEventsState(
          events: [],
          isLoading: false,
          query: '',
          failure: none(),
        ),
      ],
    );
    blocTest<SearchEventsCubit, SearchEventsState>(
      'loading data failure',
      build: () => searchCubit,
      setUp: () => when(
        () => mockEventsRepository.searchEvents(
          query: 'pilk',
          languageCode: 'pl',
        ),
      ).thenAnswer((_) async => left(failure)),
      verify: (_) {
        verify(
          () => mockEventsRepository.searchEvents(
            query: 'pilk',
            languageCode: 'pl',
          ),
        ).called(1);
      },
      act: (cubit) async {
        cubit.searchEvents(
          query: 'pilk',
          languageCode: 'pl',
        );
        await Future.delayed(Duration(seconds: 1));
      },
      expect: () => [
        SearchEventsState(
          events: [],
          failure: none(),
          isLoading: true,
          query: 'pilk',
        ),
        SearchEventsState(
          events: [],
          failure: some(failure),
          isLoading: false,
          query: 'pilk',
        ),
      ],
    );
  });
}
