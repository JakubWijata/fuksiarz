import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuksiarz/src/core/failure.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';
import 'package:fuksiarz/src/domain/repositories/i_events_repository.dart';
import 'package:injectable/injectable.dart';

part 'events_state.dart';
part 'events_cubit.freezed.dart';

@injectable
class EventsCubit extends Cubit<EventsState> {
  EventsCubit(this._eventsRepository) : super(EventsState.initial());

  final IEventsRepository _eventsRepository;

  Future<void> loadData() async {
    emit(state.copyWith(isLoading: true));
    final result = await _eventsRepository.getEvents(
      categories: CategoryType.values,
    );

    result.fold(
      (f) {
        emit(
          state.copyWith(
            isLoading: false,
            failure: some(f),
          ),
        );
      },
      (events) {
        emit(
          state.copyWith(
            isLoading: false,
            failure: none(),
            allEventsCount: events.length,
            events: Map.fromEntries(
              CategoryType.values.map(
                (category) => MapEntry(
                  category,
                  events.where((e) => e.categoryType == category).toList(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
