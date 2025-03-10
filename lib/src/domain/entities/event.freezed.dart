// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Event {
  int get eventId => throw _privateConstructorUsedError;
  CategoryType get categoryType => throw _privateConstructorUsedError;
  List<Participant> get participants => throw _privateConstructorUsedError;
  List<Game> get eventGames => throw _privateConstructorUsedError;
  Option<DateTime> get eventStart => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get category3Name => throw _privateConstructorUsedError;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {int eventId,
      CategoryType categoryType,
      List<Participant> participants,
      List<Game> eventGames,
      Option<DateTime> eventStart,
      String eventName,
      String category3Name});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? categoryType = null,
    Object? participants = null,
    Object? eventGames = null,
    Object? eventStart = null,
    Object? eventName = null,
    Object? category3Name = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      eventGames: null == eventGames
          ? _value.eventGames
          : eventGames // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      eventStart: null == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      category3Name: null == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int eventId,
      CategoryType categoryType,
      List<Participant> participants,
      List<Game> eventGames,
      Option<DateTime> eventStart,
      String eventName,
      String category3Name});
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? categoryType = null,
    Object? participants = null,
    Object? eventGames = null,
    Object? eventStart = null,
    Object? eventName = null,
    Object? category3Name = null,
  }) {
    return _then(_$EventImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      eventGames: null == eventGames
          ? _value._eventGames
          : eventGames // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      eventStart: null == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      category3Name: null == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventImpl implements _Event {
  const _$EventImpl(
      {required this.eventId,
      required this.categoryType,
      required final List<Participant> participants,
      required final List<Game> eventGames,
      required this.eventStart,
      required this.eventName,
      required this.category3Name})
      : _participants = participants,
        _eventGames = eventGames;

  @override
  final int eventId;
  @override
  final CategoryType categoryType;
  final List<Participant> _participants;
  @override
  List<Participant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<Game> _eventGames;
  @override
  List<Game> get eventGames {
    if (_eventGames is EqualUnmodifiableListView) return _eventGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventGames);
  }

  @override
  final Option<DateTime> eventStart;
  @override
  final String eventName;
  @override
  final String category3Name;

  @override
  String toString() {
    return 'Event(eventId: $eventId, categoryType: $categoryType, participants: $participants, eventGames: $eventGames, eventStart: $eventStart, eventName: $eventName, category3Name: $category3Name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._eventGames, _eventGames) &&
            (identical(other.eventStart, eventStart) ||
                other.eventStart == eventStart) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.category3Name, category3Name) ||
                other.category3Name == category3Name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      categoryType,
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_eventGames),
      eventStart,
      eventName,
      category3Name);

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);
}

abstract class _Event implements Event {
  const factory _Event(
      {required final int eventId,
      required final CategoryType categoryType,
      required final List<Participant> participants,
      required final List<Game> eventGames,
      required final Option<DateTime> eventStart,
      required final String eventName,
      required final String category3Name}) = _$EventImpl;

  @override
  int get eventId;
  @override
  CategoryType get categoryType;
  @override
  List<Participant> get participants;
  @override
  List<Game> get eventGames;
  @override
  Option<DateTime> get eventStart;
  @override
  String get eventName;
  @override
  String get category3Name;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
