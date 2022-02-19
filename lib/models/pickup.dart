import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pickandgo/models/receiver.dart';
import 'package:pickandgo/models/sender.dart';

part 'pickup.freezed.dart';

part 'pickup.g.dart';

@freezed
class Pickup with _$Pickup {
  const Pickup._();

  @JsonSerializable(explicitToJson: true)
  factory Pickup(
      {
        Sender? sender,
        DateTime? pickupDateTime,
        String? packageDetails,
        Receiver? receiver,
      }) = _Pickup;

  factory Pickup.fromJson(Map<String, dynamic> json) => _$PickupFromJson(json);
}