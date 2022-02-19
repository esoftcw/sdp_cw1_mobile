// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pickup _$$_PickupFromJson(Map<String, dynamic> json) => _$_Pickup(
      sender: json['sender'] == null
          ? null
          : Sender.fromJson(json['sender'] as Map<String, dynamic>),
      pickupDateTime: json['pickupDateTime'] == null
          ? null
          : DateTime.parse(json['pickupDateTime'] as String),
      packageDetails: json['packageDetails'] as String?,
      receiver: json['receiver'] == null
          ? null
          : Receiver.fromJson(json['receiver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PickupToJson(_$_Pickup instance) => <String, dynamic>{
      'sender': instance.sender?.toJson(),
      'pickupDateTime': instance.pickupDateTime?.toIso8601String(),
      'packageDetails': instance.packageDetails,
      'receiver': instance.receiver?.toJson(),
    };
