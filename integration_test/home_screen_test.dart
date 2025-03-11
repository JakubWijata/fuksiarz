import 'package:flutter_test/flutter_test.dart';
import 'package:fuksiarz/injectable/injectable.dart';
import 'package:fuksiarz/src/app/app.dart';
import 'package:fuksiarz/src/presentation/home/widgets/event_card.dart';
import 'package:fuksiarz/src/presentation/home/widgets/events_list.dart';
import 'package:fuksiarz/src/presentation/home/widgets/search_bar_placeholder.dart';
import 'package:fuksiarz/src/presentation/search_screen/search_screen.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'Home screen load data correctly',
    ($) async {
      configureDependencies();

      await $.pumpWidgetAndSettle(App());

      final soccerHeader = $(SectionHeader).$('Soccer');

      await soccerHeader.waitUntilVisible();

      expect($(EventCard), findsNothing);

      await soccerHeader.tap();

      expect($(EventCard), findsWidgets);
    },
  );

  patrolTest(
    'Navigation to search screen',
    ($) async {
      configureDependencies();

      await $.pumpWidgetAndSettle(App());

      final searchInputPlaceholder = $(SearchBarPlaceholder);

      expect(searchInputPlaceholder, findsWidgets);

      await searchInputPlaceholder.tap();

      expect(searchInputPlaceholder, findsNothing);
      expect($(SearchScreen), findsOne);
    },
  );
}
