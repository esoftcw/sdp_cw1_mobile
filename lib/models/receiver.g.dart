// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receiver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Receiver _$$_ReceiverFromJson(Map<String, dynamic> json) => _$_Receiver(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      address: json['address'] as String,
      cityName: json['cityName'] as String?,
      cityId: json['cityId'] as String,
      contactNumber: json['contactNumber'] as String,
      altContactNumber: json['altContactNumber'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_ReceiverToJson(_$_Receiver instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
      'cityName': instance.cityName,
      'cityId': instance.cityId,
      'contactNumber': instance.contactNumber,
      'altContactNumber': instance.altContactNumber,
      'email': instance.email,
    };
