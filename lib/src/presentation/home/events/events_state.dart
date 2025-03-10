part of 'events_cubit.dart';

@freezed
class EventsState with _$EventsState {
  const EventsState._();

  const factory EventsState({
    required Map<CategoryType, List<Event>> events,
    required int allEventsCount,
    required bool isLoading,
    required Option<Failure> failure,
  }) = _EventsState;

  factory EventsState.initial() => EventsState(
        events: {},
        isLoading: false,
        allEventsCount: 0,
        failure: none(),
      );

  int categoryEventsCount(CategoryType type) => events[type]?.length ?? 0;
}
