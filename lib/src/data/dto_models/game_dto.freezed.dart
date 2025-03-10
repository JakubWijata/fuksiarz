// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameDTO _$GameDTOFromJson(Map<String, dynamic> json) {
  return _GameDTO.fromJson(json);
}

/// @nodoc
mixin _$GameDTO {
  int get gameId => throw _privateConstructorUsedError;
  String get gameName => throw _privateConstructorUsedError;
  List<OutcomeDTO>? get outcomes => throw _privateConstructorUsedError;

  /// Serializes this GameDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameDTOCopyWith<GameDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDTOCopyWith<$Res> {
  factory $GameDTOCopyWith(GameDTO value, $Res Function(GameDTO) then) =
      _$GameDTOCopyWithImpl<$Res, GameDTO>;
  @useResult
  $Res call({int gameId, String gameName, List<OutcomeDTO>? outcomes});
}

/// @nodoc
class _$GameDTOCopyWithImpl<$Res, $Val extends GameDTO>
    implements $GameDTOCopyWith<$Res> {
  _$GameDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? gameName = null,
    Object? outcomes = freezed,
  }) {
    return _then(_value.copyWith(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      outcomes: freezed == outcomes
          ? _value.outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<OutcomeDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameDTOImplCopyWith<$Res> implements $GameDTOCopyWith<$Res> {
  factory _$$GameDTOImplCopyWith(
          _$GameDTOImpl value, $Res Function(_$GameDTOImpl) then) =
      __$$GameDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int gameId, String gameName, List<OutcomeDTO>? outcomes});
}

/// @nodoc
class __$$GameDTOImplCopyWithImpl<$Res>
    extends _$GameDTOCopyWithImpl<$Res, _$GameDTOImpl>
    implements _$$GameDTOImplCopyWith<$Res> {
  __$$GameDTOImplCopyWithImpl(
      _$GameDTOImpl _value, $Res Function(_$GameDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? gameName = null,
    Object? outcomes = freezed,
  }) {
    return _then(_$GameDTOImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      outcomes: freezed == outcomes
          ? _value._outcomes
          : outcomes // ignore: cast_nullable_to_non_nullable
              as List<OutcomeDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameDTOImpl implements _GameDTO {
  const _$GameDTOImpl(
      {required this.gameId,
      required this.gameName,
      final List<OutcomeDTO>? outcomes})
      : _outcomes = outcomes;

  factory _$GameDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameDTOImplFromJson(json);

  @override
  final int gameId;
  @override
  final String gameName;
  final List<OutcomeDTO>? _outcomes;
  @override
  List<OutcomeDTO>? get outcomes {
    final value = _outcomes;
    if (value == null) return null;
    if (_outcomes is EqualUnmodifiableListView) return _outcomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GameDTO(gameId: $gameId, gameName: $gameName, outcomes: $outcomes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDTOImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            const DeepCollectionEquality().equals(other._outcomes, _outcomes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gameId, gameName,
      const DeepCollectionEquality().hash(_outcomes));

  /// Create a copy of GameDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDTOImplCopyWith<_$GameDTOImpl> get copyWith =>
      __$$GameDTOImplCopyWithImpl<_$GameDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameDTOImplToJson(
      this,
    );
  }
}

abstract class _GameDTO implements GameDTO {
  const factory _GameDTO(
      {required final int gameId,
      required final String gameName,
      final List<OutcomeDTO>? outcomes}) = _$GameDTOImpl;

  factory _GameDTO.fromJson(Map<String, dynamic> json) = _$GameDTOImpl.fromJson;

  @override
  int get gameId;
  @override
  String get gameName;
  @override
  List<OutcomeDTO>? get outcomes;

  /// Create a copy of GameDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameDTOImplCopyWith<_$GameDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
