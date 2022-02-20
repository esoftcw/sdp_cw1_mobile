import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery.freezed.dart';

part 'delivery.g.dart';

@freezed
class Delivery with _$Delivery {
  const Delivery._();

  @JsonSerializable(explicitToJson: true)
  factory Delivery(
      {
         String? track_no,
        required int id,
        required String from,
        required String to,
        required String eta,
        required String type,
      }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) => _$DeliveryFromJson(json);
}