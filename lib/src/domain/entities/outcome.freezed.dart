// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outcome.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Outcome {
  int get outcomeId => throw _privateConstructorUsedError;
  String get outcomeName => throw _privateConstructorUsedError;
  Option<double> get odds => throw _privateConstructorUsedError;

  /// Create a copy of Outcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OutcomeCopyWith<Outcome> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutcomeCopyWith<$Res> {
  factory $OutcomeCopyWith(Outcome value, $Res Function(Outcome) then) =
      _$OutcomeCopyWithImpl<$Res, Outcome>;
  @useResult
  $Res call({int outcomeId, String outcomeName, Option<double> odds});
}

/// @nodoc
class _$OutcomeCopyWithImpl<$Res, $Val extends Outcome>
    implements $OutcomeCopyWith<$Res> {
  _$OutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Outcome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeId = null,
    Object? outcomeName = null,
    Object? odds = null,
  }) {
    return _then(_value.copyWith(
      outcomeId: null == outcomeId
          ? _value.outcomeId
          : outcomeId // ignore: cast_nullable_to_non_nullable
              as int,
      outcomeName: null == outcomeName
          ? _value.outcomeName
          : outcomeName // ignore: cast_nullable_to_non_nullable
              as String,
      odds: null == odds
          ? _value.odds
          : odds // ignore: cast_nullable_to_non_nullable
              as Option<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutcomeImplCopyWith<$Res> implements $OutcomeCopyWith<$Res> {
  factory _$$OutcomeImplCopyWith(
          _$OutcomeImpl value, $Res Function(_$OutcomeImpl) then) =
      __$$OutcomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int outcomeId, String outcomeName, Option<double> odds});
}

/// @nodoc
class __$$OutcomeImplCopyWithImpl<$Res>
    extends _$OutcomeCopyWithImpl<$Res, _$OutcomeImpl>
    implements _$$OutcomeImplCopyWith<$Res> {
  __$$OutcomeImplCopyWithImpl(
      _$OutcomeImpl _value, $Res Function(_$OutcomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Outcome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeId = null,
    Object? outcomeName = null,
    Object? odds = null,
  }) {
    return _then(_$OutcomeImpl(
      outcomeId: null == outcomeId
          ? _value.outcomeId
          : outcomeId // ignore: cast_nullable_to_non_nullable
              as int,
      outcomeName: null == outcomeName
          ? _value.outcomeName
          : outcomeName // ignore: cast_nullable_to_non_nullable
              as String,
      odds: null == odds
          ? _value.odds
          : odds // ignore: cast_nullable_to_non_nullable
              as Option<double>,
    ));
  }
}

/// @nodoc

class _$OutcomeImpl implements _Outcome {
  const _$OutcomeImpl(
      {required this.outcomeId, required this.outcomeName, required this.odds});

  @override
  final int outcomeId;
  @override
  final String outcomeName;
  @override
  final Option<double> odds;

  @override
  String toString() {
    return 'Outcome(outcomeId: $outcomeId, outcomeName: $outcomeName, odds: $odds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutcomeImpl &&
            (identical(other.outcomeId, outcomeId) ||
                other.outcomeId == outcomeId) &&
            (identical(other.outcomeName, outcomeName) ||
                other.outcomeName == outcomeName) &&
            (identical(other.odds, odds) || other.odds == odds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, outcomeId, outcomeName, odds);

  /// Create a copy of Outcome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutcomeImplCopyWith<_$OutcomeImpl> get copyWith =>
      __$$OutcomeImplCopyWithImpl<_$OutcomeImpl>(this, _$identity);
}

abstract class _Outcome implements Outcome {
  const factory _Outcome(
      {required final int outcomeId,
      required final String outcomeName,
      required final Option<double> odds}) = _$OutcomeImpl;

  @override
  int get outcomeId;
  @override
  String get outcomeName;
  @override
  Option<double> get odds;

  /// Create a copy of Outcome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutcomeImplCopyWith<_$OutcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
