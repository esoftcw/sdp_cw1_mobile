import 'package:freezed_annotation/freezed_annotation.dart';

part 'sender.freezed.dart';

part 'sender.g.dart';

@freezed
class Sender with _$Sender {
  const Sender._();

  factory Sender(
      {
        required String firstName,
        required String lastName,
        required String address,
         String? cityName,
        required String cityId,
        required String contactNumber,
         String? altContactNumber,
         String? email,
      }) = _Sender;

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
}