import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'outcome.freezed.dart';

@freezed
class Outcome with _$Outcome {
  const factory Outcome({
    required int outcomeId,
    required String outcomeName,
    required Option<double> odds,
  }) = _Outcome;
}
