// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_selector_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategorySelectorState {
  Option<CategoryType> get selectedCategory =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategorySelectorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategorySelectorStateCopyWith<CategorySelectorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorySelectorStateCopyWith<$Res> {
  factory $CategorySelectorStateCopyWith(CategorySelectorState value,
          $Res Function(CategorySelectorState) then) =
      _$CategorySelectorStateCopyWithImpl<$Res, CategorySelectorState>;
  @useResult
  $Res call({Option<CategoryType> selectedCategory});
}

/// @nodoc
class _$CategorySelectorStateCopyWithImpl<$Res,
        $Val extends CategorySelectorState>
    implements $CategorySelectorStateCopyWith<$Res> {
  _$CategorySelectorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategorySelectorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
  }) {
    return _then(_value.copyWith(
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Option<CategoryType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategorySelectorStateImplCopyWith<$Res>
    implements $CategorySelectorStateCopyWith<$Res> {
  factory _$$CategorySelectorStateImplCopyWith(
          _$CategorySelectorStateImpl value,
          $Res Function(_$CategorySelectorStateImpl) then) =
      __$$CategorySelectorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<CategoryType> selectedCategory});
}

/// @nodoc
class __$$CategorySelectorStateImplCopyWithImpl<$Res>
    extends _$CategorySelectorStateCopyWithImpl<$Res,
        _$CategorySelectorStateImpl>
    implements _$$CategorySelectorStateImplCopyWith<$Res> {
  __$$CategorySelectorStateImplCopyWithImpl(_$CategorySelectorStateImpl _value,
      $Res Function(_$CategorySelectorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategorySelectorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
  }) {
    return _then(_$CategorySelectorStateImpl(
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Option<CategoryType>,
    ));
  }
}

/// @nodoc

class _$CategorySelectorStateImpl extends _CategorySelectorState {
  const _$CategorySelectorStateImpl({required this.selectedCategory})
      : super._();

  @override
  final Option<CategoryType> selectedCategory;

  @override
  String toString() {
    return 'CategorySelectorState(selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySelectorStateImpl &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCategory);

  /// Create a copy of CategorySelectorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySelectorStateImplCopyWith<_$CategorySelectorStateImpl>
      get copyWith => __$$CategorySelectorStateImplCopyWithImpl<
          _$CategorySelectorStateImpl>(this, _$identity);
}

abstract class _CategorySelectorState extends CategorySelectorState {
  const factory _CategorySelectorState(
          {required final Option<CategoryType> selectedCategory}) =
      _$CategorySelectorStateImpl;
  const _CategorySelectorState._() : super._();

  @override
  Option<CategoryType> get selectedCategory;

  /// Create a copy of CategorySelectorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorySelectorStateImplCopyWith<_$CategorySelectorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
