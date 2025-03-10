import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fuksiarz/config/app_theme_extension.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';
import 'package:fuksiarz/src/presentation/common/category_type_translations.dart';
import 'package:fuksiarz/src/presentation/home/categories_selector/category_selector_cubit.dart';
import 'package:fuksiarz/src/presentation/home/events/events_cubit.dart';
import 'package:fuksiarz/src/presentation/home/widgets/category_selector.dart';
import 'package:fuksiarz/src/presentation/home/widgets/event_card.dart';

class EventsList extends StatelessWidget {
  const EventsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategorySelectorCubit, CategorySelectorState>(
      builder: (context, selectedCategoryState) {
        return BlocBuilder<EventsCubit, EventsState>(
          builder: (context, state) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: CategorySelector(
                    allEventsCount: state.allEventsCount,
                    categories: CategoryType.values
                        .map(
                          (category) => ChipData(
                            count: state.categoryEventsCount(category),
                            type: category,
                          ),
                        )
                        .toList(),
                    onSelectAllPressed:
                        context.read<CategorySelectorCubit>().clearSelection,
                    onCategoryPressed:
                        context.read<CategorySelectorCubit>().selectCategory,
                    selectedCategory: selectedCategoryState.selectedCategory,
                  ),
                ),
                Flexible(
                  child: CustomScrollView(
                    slivers: [
                      ...selectedCategoryState.selectedCategory.fold(
                        () => state.events.entries.map(
                          (entry) => SectionList(
                            events: entry.value,
                            type: entry.key,
                          ),
                        ),
                        (category) => [
                          SectionList(
                            events: state.events[category] ?? [],
                            type: category,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          },
        );
      },
    );
  }
}

class SectionList extends StatefulWidget {
  const SectionList({
    super.key,
    required this.type,
    required this.events,
  });

  final CategoryType type;
  final List<Event> events;

  @override
  State<SectionList> createState() => _SectionListState();
}

class _SectionListState extends State<SectionList> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index == 0) {
            return SectionHeader(
              category: widget.type,
              eventsCount: widget.events.length,
              isExpanded: isExpanded,
              onPressed: () {
                isExpanded = !isExpanded;
                setState(() {});
              },
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 8,
            ),
            child: EventCard(event: widget.events[index - 1]),
          );
        },
        childCount: isExpanded ? widget.events.length + 1 : 1,
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.onPressed,
    required this.eventsCount,
    required this.isExpanded,
    required this.category,
  });

  final VoidCallback onPressed;
  final int eventsCount;
  final bool isExpanded;
  final CategoryType category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: context.colors.borderPrimary,
            ),
          ),
        ),
        child: Row(
          children: [
            Text(
              category.categoryName(context),
              style: context.textTheme.titleLarge,
            ),
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: context.colors.borderPrimary,
              ),
              child: Text('$eventsCount'),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: context.colors.borderPrimary,
                ),
                color: context.colors.onAccent,
              ),
              child: Icon(
                isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              ),
            )
          ],
        ),
      ),
    );
  }
}
