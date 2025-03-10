import 'package:flutter/material.dart';
import 'package:fuksiarz/l10n/l10n.dart';
import 'package:fuksiarz/src/domain/entities/category_type.dart';

extension CategoryTypeX on CategoryType {
  String categoryName(BuildContext context) => switch (this) {
        CategoryType.baseball => context.l10n.baseball_category,
        CategoryType.soccer => context.l10n.soccer_category,
        CategoryType.basketball => context.l10n.basketball_category,
        CategoryType.iceHockey => context.l10n.ice_hockey_category,
        CategoryType.tennis => context.l10n.tennis_category,
        CategoryType.liveEvent => context.l10n.live_event_category,
        CategoryType.specialEvent => context.l10n.special_event_category,
        CategoryType.handball => context.l10n.handball_category,
        CategoryType.floorBall => context.l10n.floorball_category,
        CategoryType.golf => context.l10n.golf_category,
        CategoryType.volleyball => context.l10n.volleyball_category,
      };
}
