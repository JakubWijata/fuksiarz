import 'package:freezed_annotation/freezed_annotation.dart';

part 'outcome_dto.freezed.dart';
part 'outcome_dto.g.dart';

@freezed
class OutcomeDTO with _$OutcomeDTO {
  const factory OutcomeDTO({
    required int outcomeId,
    required String outcomeName,
    required double? odds,
  }) = _OutcomeDTO;

  factory OutcomeDTO.fromJson(Map<String, dynamic> json) =>
      _$OutcomeDTOFromJson(json);
}
