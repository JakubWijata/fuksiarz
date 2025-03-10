part of 'category_selector_cubit.dart';

@freezed
class CategorySelectorState with _$CategorySelectorState {
  const CategorySelectorState._();

  const factory CategorySelectorState({
    required Option<CategoryType> selectedCategory,
  }) = _CategorySelectorState;

  factory CategorySelectorState.initial() => CategorySelectorState(
        selectedCategory: none(),
      );
}
