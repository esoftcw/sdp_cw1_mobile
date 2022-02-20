import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery.freezed.dart';

part 'delivery.g.dart';

@freezed
class Delivery with _$Delivery {
  const Delivery._();

  @JsonSerializable(explicitToJson: true)
  factory Delivery(
      {
        required int id,
        required String no,
        required String status,
        required int cost,
        required String statusLog,
        required String driver,
        required String senderAddress,
        required String pickDateTime,
        required String senderFirstname,
        required String senderLastname,
        required String senderContactNumber,
        required String senderEmail,
        required String receiverFirstname,
        required String receiverLastname,
        required String receiverContactNumber,
        required String receiverEmail,
        required String receiverAddress,
        required String packageDescription,
        required int height,
        required int width,
        required int length,
        required int weight,
      }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) => _$DeliveryFromJson(json);
}