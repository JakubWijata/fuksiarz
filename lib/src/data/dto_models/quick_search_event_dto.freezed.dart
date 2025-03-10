// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_search_event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuickSearchEventDTO _$QuickSearchEventDTOFromJson(Map<String, dynamic> json) {
  return _QuickSearchEventDTO.fromJson(json);
}

/// @nodoc
mixin _$QuickSearchEventDTO {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get eventStart => throw _privateConstructorUsedError;
  Map<String, dynamic> get extras => throw _privateConstructorUsedError;

  /// Serializes this QuickSearchEventDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuickSearchEventDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickSearchEventDTOCopyWith<QuickSearchEventDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickSearchEventDTOCopyWith<$Res> {
  factory $QuickSearchEventDTOCopyWith(
          QuickSearchEventDTO value, $Res Function(QuickSearchEventDTO) then) =
      _$QuickSearchEventDTOCopyWithImpl<$Res, QuickSearchEventDTO>;
  @useResult
  $Res call(
      {int id,
      String? name,
      int type,
      int eventStart,
      Map<String, dynamic> extras});
}

/// @nodoc
class _$QuickSearchEventDTOCopyWithImpl<$Res, $Val extends QuickSearchEventDTO>
    implements $QuickSearchEventDTOCopyWith<$Res> {
  _$QuickSearchEventDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickSearchEventDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? type = null,
    Object? eventStart = null,
    Object? extras = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      eventStart: null == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as int,
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuickSearchEventDTOImplCopyWith<$Res>
    implements $QuickSearchEventDTOCopyWith<$Res> {
  factory _$$QuickSearchEventDTOImplCopyWith(_$QuickSearchEventDTOImpl value,
          $Res Function(_$QuickSearchEventDTOImpl) then) =
      __$$QuickSearchEventDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      int type,
      int eventStart,
      Map<String, dynamic> extras});
}

/// @nodoc
class __$$QuickSearchEventDTOImplCopyWithImpl<$Res>
    extends _$QuickSearchEventDTOCopyWithImpl<$Res, _$QuickSearchEventDTOImpl>
    implements _$$QuickSearchEventDTOImplCopyWith<$Res> {
  __$$QuickSearchEventDTOImplCopyWithImpl(_$QuickSearchEventDTOImpl _value,
      $Res Function(_$QuickSearchEventDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickSearchEventDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? type = null,
    Object? eventStart = null,
    Object? extras = null,
  }) {
    return _then(_$QuickSearchEventDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      eventStart: null == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as int,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuickSearchEventDTOImpl implements _QuickSearchEventDTO {
  const _$QuickSearchEventDTOImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.eventStart,
      required final Map<String, dynamic> extras})
      : _extras = extras;

  factory _$QuickSearchEventDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuickSearchEventDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final int type;
  @override
  final int eventStart;
  final Map<String, dynamic> _extras;
  @override
  Map<String, dynamic> get extras {
    if (_extras is EqualUnmodifiableMapView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extras);
  }

  @override
  String toString() {
    return 'QuickSearchEventDTO(id: $id, name: $name, type: $type, eventStart: $eventStart, extras: $extras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickSearchEventDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.eventStart, eventStart) ||
                other.eventStart == eventStart) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, eventStart,
      const DeepCollectionEquality().hash(_extras));

  /// Create a copy of QuickSearchEventDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickSearchEventDTOImplCopyWith<_$QuickSearchEventDTOImpl> get copyWith =>
      __$$QuickSearchEventDTOImplCopyWithImpl<_$QuickSearchEventDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuickSearchEventDTOImplToJson(
      this,
    );
  }
}

abstract class _QuickSearchEventDTO implements QuickSearchEventDTO {
  const factory _QuickSearchEventDTO(
      {required final int id,
      required final String? name,
      required final int type,
      required final int eventStart,
      required final Map<String, dynamic> extras}) = _$QuickSearchEventDTOImpl;

  factory _QuickSearchEventDTO.fromJson(Map<String, dynamic> json) =
      _$QuickSearchEventDTOImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  int get type;
  @override
  int get eventStart;
  @override
  Map<String, dynamic> get extras;

  /// Create a copy of QuickSearchEventDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickSearchEventDTOImplCopyWith<_$QuickSearchEventDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
