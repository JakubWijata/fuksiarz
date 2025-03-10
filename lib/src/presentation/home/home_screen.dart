import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fuksiarz/config/app_theme_extension.dart';
import 'package:fuksiarz/injectable/injectable.dart';
import 'package:fuksiarz/l10n/l10n.dart';
import 'package:fuksiarz/routing/app_routes.dart';
import 'package:fuksiarz/routing/router.dart';
import 'package:fuksiarz/src/presentation/common/app_messenger.dart';
import 'package:fuksiarz/src/presentation/home/categories_selector/category_selector_cubit.dart';
import 'package:fuksiarz/src/presentation/home/events/events_cubit.dart';
import 'package:fuksiarz/src/presentation/home/widgets/events_widget.dart';
import 'package:fuksiarz/src/presentation/home/widgets/home_app_bar.dart';
import 'package:fuksiarz/src/presentation/home/widgets/search_bar_placeholder.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategorySelectorCubit>(
          create: (context) => getIt.get(),
        ),
        BlocProvider<EventsCubit>(
          create: (context) => getIt.get()..loadData(),
        ),
      ],
      child: BlocListener<EventsCubit, EventsState>(
        listenWhen: (previous, current) =>
            previous.failure != current.failure && current.failure.isSome(),
        listener: (context, state) => _onEventsFailure(context),
        child: HomeScreenScaffold(),
      ),
    );
  }

  void _onEventsFailure(BuildContext context) {
    AppMessenger.showInfo(context, context.l10n.something_went_wrong);
  }
}

class HomeScreenScaffold extends StatelessWidget {
  const HomeScreenScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return BlocBuilder<EventsCubit, EventsState>(
          builder: (context, state) {
            return Scaffold(
              appBar: HomeAppBar(
                addMoneyLabel: '21,37 ${context.l10n.currency_pln}',
                onAddMoneyPressed: () => _onAddMoneyPressed(context),
              ),
              body: BlocBuilder<CategorySelectorCubit, CategorySelectorState>(
                builder: (context, selectedCategoryState) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: context.colors.borderPrimary,
                          ),
                          color: context.colors.background,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 10,
                        ),
                        child: SearchBarPlaceholder(
                          onPressed: () => _onSearchBarPressed(context),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: sizingInformation.isMobile
                              ? EdgeInsets.zero
                              : EdgeInsets.symmetric(horizontal: 80),
                          child: EventsWidget(),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  void _onAddMoneyPressed(BuildContext context) {
    AppMessenger.showInfo(context, 'UnimplementedError');
    throw UnimplementedError();
  }

  void _onSearchBarPressed(BuildContext context) {
    router.go('${AppRoutes.home}/${AppRoutes.search}');
  }
}
