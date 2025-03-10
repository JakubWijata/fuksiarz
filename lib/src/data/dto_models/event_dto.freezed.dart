// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventDTO _$EventDTOFromJson(Map<String, dynamic> json) {
  return _EventDTO.fromJson(json);
}

/// @nodoc
mixin _$EventDTO {
  int get eventId => throw _privateConstructorUsedError;
  int get category1Id => throw _privateConstructorUsedError;
  List<ParticipantDTO>? get participants => throw _privateConstructorUsedError;
  List<GameDTO>? get eventGames => throw _privateConstructorUsedError;
  int? get eventStart => throw _privateConstructorUsedError;
  String? get eventName => throw _privateConstructorUsedError;
  String? get category3Name => throw _privateConstructorUsedError;

  /// Serializes this EventDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventDTOCopyWith<EventDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDTOCopyWith<$Res> {
  factory $EventDTOCopyWith(EventDTO value, $Res Function(EventDTO) then) =
      _$EventDTOCopyWithImpl<$Res, EventDTO>;
  @useResult
  $Res call(
      {int eventId,
      int category1Id,
      List<ParticipantDTO>? participants,
      List<GameDTO>? eventGames,
      int? eventStart,
      String? eventName,
      String? category3Name});
}

/// @nodoc
class _$EventDTOCopyWithImpl<$Res, $Val extends EventDTO>
    implements $EventDTOCopyWith<$Res> {
  _$EventDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? category1Id = null,
    Object? participants = freezed,
    Object? eventGames = freezed,
    Object? eventStart = freezed,
    Object? eventName = freezed,
    Object? category3Name = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      category1Id: null == category1Id
          ? _value.category1Id
          : category1Id // ignore: cast_nullable_to_non_nullable
              as int,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantDTO>?,
      eventGames: freezed == eventGames
          ? _value.eventGames
          : eventGames // ignore: cast_nullable_to_non_nullable
              as List<GameDTO>?,
      eventStart: freezed == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as int?,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      category3Name: freezed == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventDTOImplCopyWith<$Res>
    implements $EventDTOCopyWith<$Res> {
  factory _$$EventDTOImplCopyWith(
          _$EventDTOImpl value, $Res Function(_$EventDTOImpl) then) =
      __$$EventDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int eventId,
      int category1Id,
      List<ParticipantDTO>? participants,
      List<GameDTO>? eventGames,
      int? eventStart,
      String? eventName,
      String? category3Name});
}

/// @nodoc
class __$$EventDTOImplCopyWithImpl<$Res>
    extends _$EventDTOCopyWithImpl<$Res, _$EventDTOImpl>
    implements _$$EventDTOImplCopyWith<$Res> {
  __$$EventDTOImplCopyWithImpl(
      _$EventDTOImpl _value, $Res Function(_$EventDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? category1Id = null,
    Object? participants = freezed,
    Object? eventGames = freezed,
    Object? eventStart = freezed,
    Object? eventName = freezed,
    Object? category3Name = freezed,
  }) {
    return _then(_$EventDTOImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      category1Id: null == category1Id
          ? _value.category1Id
          : category1Id // ignore: cast_nullable_to_non_nullable
              as int,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ParticipantDTO>?,
      eventGames: freezed == eventGames
          ? _value._eventGames
          : eventGames // ignore: cast_nullable_to_non_nullable
              as List<GameDTO>?,
      eventStart: freezed == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as int?,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      category3Name: freezed == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventDTOImpl implements _EventDTO {
  const _$EventDTOImpl(
      {required this.eventId,
      required this.category1Id,
      final List<ParticipantDTO>? participants,
      final List<GameDTO>? eventGames,
      this.eventStart,
      this.eventName,
      this.category3Name})
      : _participants = participants,
        _eventGames = eventGames;

  factory _$EventDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventDTOImplFromJson(json);

  @override
  final int eventId;
  @override
  final int category1Id;
  final List<ParticipantDTO>? _participants;
  @override
  List<ParticipantDTO>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GameDTO>? _eventGames;
  @override
  List<GameDTO>? get eventGames {
    final value = _eventGames;
    if (value == null) return null;
    if (_eventGames is EqualUnmodifiableListView) return _eventGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? eventStart;
  @override
  final String? eventName;
  @override
  final String? category3Name;

  @override
  String toString() {
    return 'EventDTO(eventId: $eventId, category1Id: $category1Id, participants: $participants, eventGames: $eventGames, eventStart: $eventStart, eventName: $eventName, category3Name: $category3Name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDTOImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.category1Id, category1Id) ||
                other.category1Id == category1Id) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      category1Id,
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_eventGames),
      eventStart,
      eventName,
      category3Name);

  /// Create a copy of EventDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDTOImplCopyWith<_$EventDTOImpl> get copyWith =>
      __$$EventDTOImplCopyWithImpl<_$EventDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventDTOImplToJson(
      this,
    );
  }
}

abstract class _EventDTO implements EventDTO {
  const factory _EventDTO(
      {required final int eventId,
      required final int category1Id,
      final List<ParticipantDTO>? participants,
      final List<GameDTO>? eventGames,
      final int? eventStart,
      final String? eventName,
      final String? category3Name}) = _$EventDTOImpl;

  factory _EventDTO.fromJson(Map<String, dynamic> json) =
      _$EventDTOImpl.fromJson;

  @override
  int get eventId;
  @override
  int get category1Id;
  @override
  List<ParticipantDTO>? get participants;
  @override
  List<GameDTO>? get eventGames;
  @override
  int? get eventStart;
  @override
  String? get eventName;
  @override
  String? get category3Name;

  /// Create a copy of EventDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventDTOImplCopyWith<_$EventDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
