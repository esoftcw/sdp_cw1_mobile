// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Delivery _$$_DeliveryFromJson(Map<String, dynamic> json) => _$_Delivery(
      track_no: json['track_no'] as String?,
      id: json['id'] as int,
      from: json['from'] as String,
      to: json['to'] as String,
      eta: json['eta'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_DeliveryToJson(_$_Delivery instance) =>
    <String, dynamic>{
      'track_no': instance.track_no,
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'eta': instance.eta,
      'type': instance.type,
    };
