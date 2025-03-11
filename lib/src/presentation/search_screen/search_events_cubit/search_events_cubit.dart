import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuksiarz/src/core/failure.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';
import 'package:fuksiarz/src/domain/repositories/i_events_repository.dart';
import 'package:fuksiarz/src/presentation/common/debouncer.dart';
import 'package:injectable/injectable.dart';

part 'search_events_state.dart';
part 'search_events_cubit.freezed.dart';

@injectable
class SearchEventsCubit extends Cubit<SearchEventsState> {
  SearchEventsCubit(this._eventsRepository)
      : super(SearchEventsState.initial());

  final IEventsRepository _eventsRepository;
  final Debouncer _debouncer = Debouncer(
    duration: Duration(
      milliseconds: 250,
    ),
  );

  Future<void> _searchEvents(
    String query,
    String languageCode,
  ) async {
    emit(
      state.copyWith(
        query: query,
        events: [],
        isLoading: true,
        failure: none(),
      ),
    );

    final result = await _eventsRepository.searchEvents(
      languageCode: languageCode,
      query: query,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          failure: some(failure),
          query: query,
          isLoading: false,
        ),
      ),
      (events) {
        emit(
          state.copyWith(
            events: events,
            failure: none(),
            isLoading: false,
            query: query,
          ),
        );
      },
    );
  }

  void searchEvents({
    required String query,
    required String languageCode,
  }) {
    if (query.length <= 3) {
      emit(
        state.copyWith(
          events: [],
          failure: none(),
          isLoading: false,
          query: '',
        ),
      );

      return;
    }
    _debouncer.run(() => _searchEvents(query, languageCode));
  }
}
