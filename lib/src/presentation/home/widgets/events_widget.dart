import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fuksiarz/config/app_theme_extension.dart';
import 'package:fuksiarz/src/presentation/home/categories_selector/category_selector_cubit.dart';
import 'package:fuksiarz/src/presentation/home/events/events_cubit.dart';
import 'package:fuksiarz/src/presentation/home/widgets/error_message.dart';
import 'package:fuksiarz/src/presentation/home/widgets/events_list.dart';

class EventsWidget extends StatelessWidget {
  const EventsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategorySelectorCubit, CategorySelectorState>(
      builder: (context, selectedCategoryState) {
        return BlocBuilder<EventsCubit, EventsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: context.colors.borderPrimary,
                ),
              );
            }
            if (state.failure.isSome()) {
              return ErrorMessage(
                onPressed: () => context.read<EventsCubit>().loadData(),
              );
            }
            return EventsList();
          },
        );
      },
    );
  }
}
