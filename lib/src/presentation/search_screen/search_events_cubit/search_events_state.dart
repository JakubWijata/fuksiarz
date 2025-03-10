part of 'search_events_cubit.dart';

@freezed
class SearchEventsState with _$SearchEventsState {
  const factory SearchEventsState({
    required List<Event> events,
    required bool isLoading,
    required String query,
    required Option<Failure> failure,
  }) = _SearchEventsState;

  factory SearchEventsState.initial() => SearchEventsState(
        events: [],
        isLoading: false,
        query: '',
        failure: none(),
      );
}
