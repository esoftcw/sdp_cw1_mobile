// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliverySummary _$$_DeliverySummaryFromJson(Map<String, dynamic> json) =>
    _$_DeliverySummary(
      track_no: json['track_no'] as String?,
      from: json['from'] as String,
      to: json['to'] as String,
      eta: json['eta'] as String,
    );

Map<String, dynamic> _$$_DeliverySummaryToJson(_$_DeliverySummary instance) =>
    <String, dynamic>{
      'track_no': instance.track_no,
      'from': instance.from,
      'to': instance.to,
      'eta': instance.eta,
    };
