import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fuksiarz/assets/app_icon_assets.dart';
import 'package:fuksiarz/assets/app_image_assets.dart';
import 'package:fuksiarz/config/app_theme_extension.dart';
import 'package:fuksiarz/injectable/injectable.dart';
import 'package:fuksiarz/l10n/l10n.dart';
import 'package:fuksiarz/src/presentation/common/app_messenger.dart';
import 'package:fuksiarz/src/presentation/common/search_bar.dart';
import 'package:fuksiarz/src/presentation/home/widgets/event_card.dart';
import 'package:fuksiarz/src/presentation/search_screen/search_events_cubit/search_events_cubit.dart';
import 'package:fuksiarz/src/presentation/search_screen/widgets/info_message.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchEventsCubit>(
      create: (context) => getIt.get(),
      child: BlocListener<SearchEventsCubit, SearchEventsState>(
        listenWhen: (previous, current) =>
            previous.failure.isNone() &&
            current.failure.isSome() &&
            !current.isLoading,
        listener: (context, state) => _onEventsFailure(context),
        child: SearchScreenScaffold(),
      ),
    );
  }

  void _onEventsFailure(BuildContext context) {
    AppMessenger.showError(context, context.l10n.something_went_wrong);
  }
}

class SearchScreenScaffold extends StatelessWidget {
  const SearchScreenScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchEventsCubit, SearchEventsState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SearchBar(
                    enabled: true,
                    onChange: (value) => _onTextChanged(context, value),
                  ),
                  SizedBox(height: 16),
                  Flexible(
                    child: ResponsiveBuilder(
                      builder: (context, sizingInformation) {
                        return Padding(
                          padding: sizingInformation.isMobile
                              ? EdgeInsets.zero
                              : EdgeInsets.symmetric(horizontal: 80),
                          child: Builder(
                            builder: (context) {
                              if (state.query.isEmpty) {
                                return SearchInitBody();
                              }
                              if (state.isLoading) {
                                return InfoMessage(
                                  icon: IconAssets.loop,
                                  title:
                                      context.l10n.searching_info_message_title,
                                  subtitle: context
                                      .l10n.searching_info_message_subtitle,
                                );
                              }
                              if (state.events.isEmpty) {
                                return InfoMessage(
                                  icon: IconAssets.warning,
                                  title: context.l10n
                                      .searching_empty_result_message_title,
                                  subtitle: context.l10n
                                      .searching_empty_result_message_subtitle,
                                );
                              }

                              return ListView.separated(
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 8),
                                itemBuilder: (context, index) => EventCard(
                                  event: state.events[index],
                                ),
                                itemCount: state.events.length,
                              );
                            },
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onTextChanged(BuildContext context, String text) {
    context.read<SearchEventsCubit>().searchEvents(
          query: text,
          languageCode: Localizations.localeOf(context).languageCode,
        );
  }
}

class SearchInitBody extends StatelessWidget {
  const SearchInitBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              context.l10n.recommended,
              style: context.textTheme.titleMedium,
            ),
            Spacer(),
            Text(
              context.l10n.show_all,
              style: context.textTheme.titleMedium
                  .copyWith(color: context.colors.accent),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Flexible(child: Image.asset(ImageAssets.card1.path)),
            SizedBox(width: 8),
            Flexible(child: Image.asset(ImageAssets.card2.path)),
            SizedBox(width: 8),
            Flexible(child: Image.asset(ImageAssets.card3.path)),
            SizedBox(width: 8),
            Flexible(child: Image.asset(ImageAssets.card4.path)),
            SizedBox(width: 8),
            Flexible(child: Image.asset(ImageAssets.card5.path)),
          ],
        ),
      ],
    );
  }
}
