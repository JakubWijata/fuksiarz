// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParticipantDTO _$ParticipantDTOFromJson(Map<String, dynamic> json) {
  return _ParticipantDTO.fromJson(json);
}

/// @nodoc
mixin _$ParticipantDTO {
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ParticipantDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantDTOCopyWith<ParticipantDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantDTOCopyWith<$Res> {
  factory $ParticipantDTOCopyWith(
          ParticipantDTO value, $Res Function(ParticipantDTO) then) =
      _$ParticipantDTOCopyWithImpl<$Res, ParticipantDTO>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$ParticipantDTOCopyWithImpl<$Res, $Val extends ParticipantDTO>
    implements $ParticipantDTOCopyWith<$Res> {
  _$ParticipantDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantDTOImplCopyWith<$Res>
    implements $ParticipantDTOCopyWith<$Res> {
  factory _$$ParticipantDTOImplCopyWith(_$ParticipantDTOImpl value,
          $Res Function(_$ParticipantDTOImpl) then) =
      __$$ParticipantDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$ParticipantDTOImplCopyWithImpl<$Res>
    extends _$ParticipantDTOCopyWithImpl<$Res, _$ParticipantDTOImpl>
    implements _$$ParticipantDTOImplCopyWith<$Res> {
  __$$ParticipantDTOImplCopyWithImpl(
      _$ParticipantDTOImpl _value, $Res Function(_$ParticipantDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$ParticipantDTOImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParticipantDTOImpl implements _ParticipantDTO {
  const _$ParticipantDTOImpl({required this.name});

  factory _$ParticipantDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantDTOImplFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'ParticipantDTO(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantDTOImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantDTOImplCopyWith<_$ParticipantDTOImpl> get copyWith =>
      __$$ParticipantDTOImplCopyWithImpl<_$ParticipantDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantDTOImplToJson(
      this,
    );
  }
}

abstract class _ParticipantDTO implements ParticipantDTO {
  const factory _ParticipantDTO({required final String? name}) =
      _$ParticipantDTOImpl;

  factory _ParticipantDTO.fromJson(Map<String, dynamic> json) =
      _$ParticipantDTOImpl.fromJson;

  @override
  String? get name;

  /// Create a copy of ParticipantDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantDTOImplCopyWith<_$ParticipantDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
