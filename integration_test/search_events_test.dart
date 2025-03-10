import 'package:flutter_test/flutter_test.dart';
import 'package:fuksiarz/injectable/injectable.dart';
import 'package:fuksiarz/src/app/app.dart';
import 'package:fuksiarz/src/presentation/common/search_bar.dart';
import 'package:fuksiarz/src/presentation/search_screen/search_screen.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'Navigate to search screen',
    ($) async {
      configureDependencies();

      await $.pumpWidgetAndSettle(App());
      await $(SearchBar).tap();

      expect($(SearchScreen), findsOneWidget);
    },
  );
}
