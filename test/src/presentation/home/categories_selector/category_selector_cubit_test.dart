import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/presentation/home/categories_selector/category_selector_cubit.dart';

void main() {
  group('CategorySelector', () {
    late CategorySelectorCubit categoryCubit;

    setUp(() {
      categoryCubit = CategorySelectorCubit();
    });

    tearDown(() {
      categoryCubit.close();
    });

    test('initial state', () {
      expect(categoryCubit.state, CategorySelectorState.initial());
    });

    blocTest<CategorySelectorCubit, CategorySelectorState>(
      'Select category',
      build: () => categoryCubit,
      act: (cubit) => cubit.selectCategory(CategoryType.baseball),
      expect: () => [
        CategorySelectorState(
          selectedCategory: some(
            CategoryType.baseball,
          ),
        )
      ],
    );
    blocTest<CategorySelectorCubit, CategorySelectorState>(
      'Select category',
      build: () => categoryCubit,
      act: (cubit) => cubit.clearSelection(),
      seed: () => CategorySelectorState(
        selectedCategory: some(
          CategoryType.baseball,
        ),
      ),
      expect: () => [
        CategorySelectorState(
          selectedCategory: none(),
        )
      ],
    );
  });
}
