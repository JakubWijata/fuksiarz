// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_events_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEventsState {
  List<Event> get events => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  Option<Failure> get failure => throw _privateConstructorUsedError;

  /// Create a copy of SearchEventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchEventsStateCopyWith<SearchEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventsStateCopyWith<$Res> {
  factory $SearchEventsStateCopyWith(
          SearchEventsState value, $Res Function(SearchEventsState) then) =
      _$SearchEventsStateCopyWithImpl<$Res, SearchEventsState>;
  @useResult
  $Res call(
      {List<Event> events,
      bool isLoading,
      String query,
      Option<Failure> failure});
}

/// @nodoc
class _$SearchEventsStateCopyWithImpl<$Res, $Val extends SearchEventsState>
    implements $SearchEventsStateCopyWith<$Res> {
  _$SearchEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isLoading = null,
    Object? query = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchEventsStateImplCopyWith<$Res>
    implements $SearchEventsStateCopyWith<$Res> {
  factory _$$SearchEventsStateImplCopyWith(_$SearchEventsStateImpl value,
          $Res Function(_$SearchEventsStateImpl) then) =
      __$$SearchEventsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Event> events,
      bool isLoading,
      String query,
      Option<Failure> failure});
}

/// @nodoc
class __$$SearchEventsStateImplCopyWithImpl<$Res>
    extends _$SearchEventsStateCopyWithImpl<$Res, _$SearchEventsStateImpl>
    implements _$$SearchEventsStateImplCopyWith<$Res> {
  __$$SearchEventsStateImplCopyWithImpl(_$SearchEventsStateImpl _value,
      $Res Function(_$SearchEventsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEventsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? isLoading = null,
    Object? query = null,
    Object? failure = null,
  }) {
    return _then(_$SearchEventsStateImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc

class _$SearchEventsStateImpl implements _SearchEventsState {
  const _$SearchEventsStateImpl(
      {required final List<Event> events,
      required this.isLoading,
      required this.query,
      required this.failure})
      : _events = events;

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final bool isLoading;
  @override
  final String query;
  @override
  final Option<Failure> failure;

  @override
  String toString() {
    return 'SearchEventsState(events: $events, isLoading: $isLoading, query: $query, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventsStateImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_events), isLoading, query, failure);

  /// Create a copy of SearchEventsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventsStateImplCopyWith<_$SearchEventsStateImpl> get copyWith =>
      __$$SearchEventsStateImplCopyWithImpl<_$SearchEventsStateImpl>(
          this, _$identity);
}

abstract class _SearchEventsState implements SearchEventsState {
  const factory _SearchEventsState(
      {required final List<Event> events,
      required final bool isLoading,
      required final String query,
      required final Option<Failure> failure}) = _$SearchEventsStateImpl;

  @override
  List<Event> get events;
  @override
  bool get isLoading;
  @override
  String get query;
  @override
  Option<Failure> get failure;

  /// Create a copy of SearchEventsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchEventsStateImplCopyWith<_$SearchEventsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
