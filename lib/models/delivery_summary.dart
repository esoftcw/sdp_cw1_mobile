import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_summary.freezed.dart';

part 'delivery_summary.g.dart';

@freezed
class DeliverySummary with _$DeliverySummary {
  const DeliverySummary._();

  @JsonSerializable(explicitToJson: true)
  factory DeliverySummary(
      {
         String? track_no,
        required int id,
        required String from,
        required String to,
        required String eta,
        required String type,
      }) = _DeliverySummary;

  factory DeliverySummary.fromJson(Map<String, dynamic> json) => _$DeliverySummaryFromJson(json);
}