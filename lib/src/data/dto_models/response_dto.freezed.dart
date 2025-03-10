// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDTO<T> _$ResponseDTOFromJson<T>(Map<String, dynamic> json) {
  return _ResponseDTO<T>.fromJson(json);
}

/// @nodoc
mixin _$ResponseDTO<T> {
  int get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<dynamic>? get data => throw _privateConstructorUsedError;

  /// Serializes this ResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseDTOCopyWith<T, ResponseDTO<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDTOCopyWith<T, $Res> {
  factory $ResponseDTOCopyWith(
          ResponseDTO<T> value, $Res Function(ResponseDTO<T>) then) =
      _$ResponseDTOCopyWithImpl<T, $Res, ResponseDTO<T>>;
  @useResult
  $Res call({int code, String? description, List<dynamic>? data});
}

/// @nodoc
class _$ResponseDTOCopyWithImpl<T, $Res, $Val extends ResponseDTO<T>>
    implements $ResponseDTOCopyWith<T, $Res> {
  _$ResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDTOImplCopyWith<T, $Res>
    implements $ResponseDTOCopyWith<T, $Res> {
  factory _$$ResponseDTOImplCopyWith(_$ResponseDTOImpl<T> value,
          $Res Function(_$ResponseDTOImpl<T>) then) =
      __$$ResponseDTOImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int code, String? description, List<dynamic>? data});
}

/// @nodoc
class __$$ResponseDTOImplCopyWithImpl<T, $Res>
    extends _$ResponseDTOCopyWithImpl<T, $Res, _$ResponseDTOImpl<T>>
    implements _$$ResponseDTOImplCopyWith<T, $Res> {
  __$$ResponseDTOImplCopyWithImpl(
      _$ResponseDTOImpl<T> _value, $Res Function(_$ResponseDTOImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDTOImpl<T>(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDTOImpl<T> implements _ResponseDTO<T> {
  const _$ResponseDTOImpl(
      {required this.code, this.description, final List<dynamic>? data})
      : _data = data;

  factory _$ResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDTOImplFromJson(json);

  @override
  final int code;
  @override
  final String? description;
  final List<dynamic>? _data;
  @override
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDTO<$T>(code: $code, description: $description, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDTOImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, description,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDTOImplCopyWith<T, _$ResponseDTOImpl<T>> get copyWith =>
      __$$ResponseDTOImplCopyWithImpl<T, _$ResponseDTOImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDTOImplToJson<T>(
      this,
    );
  }
}

abstract class _ResponseDTO<T> implements ResponseDTO<T> {
  const factory _ResponseDTO(
      {required final int code,
      final String? description,
      final List<dynamic>? data}) = _$ResponseDTOImpl<T>;

  factory _ResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ResponseDTOImpl<T>.fromJson;

  @override
  int get code;
  @override
  String? get description;
  @override
  List<dynamic>? get data;

  /// Create a copy of ResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseDTOImplCopyWith<T, _$ResponseDTOImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
