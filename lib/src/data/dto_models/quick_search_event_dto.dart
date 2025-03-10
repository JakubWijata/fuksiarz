import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_search_event_dto.freezed.dart';
part 'quick_search_event_dto.g.dart';

@freezed
class QuickSearchEventDTO with _$QuickSearchEventDTO {
  const factory QuickSearchEventDTO({
    required int id,
    required String? name,
    required int type,
    required int eventStart,
    required Map<String, dynamic> extras,
  }) = _QuickSearchEventDTO;

  factory QuickSearchEventDTO.fromJson(Map<String, dynamic> json) =>
      _$QuickSearchEventDTOFromJson(json);
}
