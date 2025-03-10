import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:injectable/injectable.dart';

part 'category_selector_state.dart';
part 'category_selector_cubit.freezed.dart';

@injectable
class CategorySelectorCubit extends Cubit<CategorySelectorState> {
  CategorySelectorCubit() : super(CategorySelectorState.initial());

  void selectCategory(CategoryType type) {
    emit(
      state.copyWith(
        selectedCategory: some(type),
      ),
    );
  }

  void clearSelection() {
    emit(state.copyWith(selectedCategory: none()));
  }
}
