import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant.freezed.dart';

@freezed
class Participant with _$Participant {
  const factory Participant({
    required String participantName,
  }) = _Participant;
}
