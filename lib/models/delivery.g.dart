// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Delivery _$$_DeliveryFromJson(Map<String, dynamic> json) => _$_Delivery(
      id: json['id'] as int,
      no: json['no'] as String,
      status: json['status'] as String,
      cost: json['cost'] as int,
      statusLog: json['statusLog'] as String,
      driver: json['driver'] as String,
      senderAddress: json['senderAddress'] as String,
      pickDateTime: json['pickDateTime'] as String,
      senderFirstname: json['senderFirstname'] as String,
      senderLastname: json['senderLastname'] as String,
      senderContactNumber: json['senderContactNumber'] as String,
      senderEmail: json['senderEmail'] as String,
      receiverFirstname: json['receiverFirstname'] as String,
      receiverLastname: json['receiverLastname'] as String,
      receiverContactNumber: json['receiverContactNumber'] as String,
      receiverEmail: json['receiverEmail'] as String,
      receiverAddress: json['receiverAddress'] as String,
      packageDescription: json['packageDescription'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
      length: json['length'] as int,
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$$_DeliveryToJson(_$_Delivery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'no': instance.no,
      'status': instance.status,
      'cost': instance.cost,
      'statusLog': instance.statusLog,
      'driver': instance.driver,
      'senderAddress': instance.senderAddress,
      'pickDateTime': instance.pickDateTime,
      'senderFirstname': instance.senderFirstname,
      'senderLastname': instance.senderLastname,
      'senderContactNumber': instance.senderContactNumber,
      'senderEmail': instance.senderEmail,
      'receiverFirstname': instance.receiverFirstname,
      'receiverLastname': instance.receiverLastname,
      'receiverContactNumber': instance.receiverContactNumber,
      'receiverEmail': instance.receiverEmail,
      'receiverAddress': instance.receiverAddress,
      'packageDescription': instance.packageDescription,
      'height': instance.height,
      'width': instance.width,
      'length': instance.length,
      'weight': instance.weight,
    };
