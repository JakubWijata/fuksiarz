import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuksiarz/assets/app_icon_assets.dart';
import 'package:fuksiarz/config/app_theme_extension.dart';
import 'package:fuksiarz/l10n/l10n.dart';
import 'package:fuksiarz/src/domain/entities/event.dart';
import 'package:intl/intl.dart';

class EventCard extends StatelessWidget {
  EventCard({
    super.key,
    required this.event,
  });

  final Event event;
  final DateFormat dateFormat = DateFormat('d.MM');
  final DateFormat hourFormat = DateFormat('H.mm');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colors.borderPrimary,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '${event.category3Name} ${event.eventStart.fold(
                  () => '',
                  (date) => dateFormat.format(
                    date,
                  ),
                )}',
                style: context.textTheme.titleMedium,
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: context.colors.accent,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(IconAssets.whatShot.path),
                    Text(
                      context.l10n.hot,
                      style: context.textTheme.subtitleSmall.copyWith(
                        color: context.colors.onAccent,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            event.eventName,
            style: context.textTheme.subtitleSmall,
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                event.eventStart.fold(
                  () => '',
                  (date) => hourFormat.format(
                    date,
                  ),
                ),
                style: context.textTheme.titleMedium,
              ),
              SizedBox(width: 8),
              Flexible(
                child: Divider(
                  height: 1,
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: event.participants
                .map(
                  (participant) => Text(
                    participant.participantName,
                    style: context.textTheme.titleMedium,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
