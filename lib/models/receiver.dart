import 'package:freezed_annotation/freezed_annotation.dart';

part 'receiver.freezed.dart';

part 'receiver.g.dart';

@freezed
class Receiver with _$Receiver {
  const Receiver._();

  factory Receiver(
      {
        required String firstName,
        required String lastName,
        required String address,
         String? cityName,
        required String cityId,
        required String contactNumber,
         String? altContactNumber,
         String? email,
      }) = _Receiver;

  factory Receiver.fromJson(Map<String, dynamic> json) => _$ReceiverFromJson(json);
}