import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pickandgo/clients/api_client.dart';
import 'package:pickandgo/models/delivery.dart';
import 'package:pickandgo/models/delivery_summary.dart';
import 'package:pickandgo/models/pickup.dart';
import 'package:pickandgo/services/storage_service.dart';


class DeliveryService extends ChangeNotifier{

  Future<List<DeliverySummary>> get() async {
    var deliveries = await ApiClient().get('deliveries');

    return deliveries.map<DeliverySummary>((delivery) {
      return DeliverySummary.fromJson(delivery);
    }).toList();
  }

  Future<List<DeliverySummary>> getByUser() async {
    var deliveries = await ApiClient().get('deliveries/rider');

    return deliveries.map<DeliverySummary>((delivery) {
      return DeliverySummary.fromJson(delivery);
    }).toList();
  }

  Future<Delivery> getDelivery(int id) async {
    var delivery = await ApiClient().get('deliveries/$id');
    return Delivery.fromJson(delivery);
  }

  makePickUp(Pickup pickup) async {
     return ApiClient().post('pickup', {
        "pickup": jsonEncode(pickup.toJson())
      });
  }

  Future<void> addPackage(String pickupId, width, height, length, weight) async {
    var response = await ApiClient().post('deliveries/$pickupId/package', {
        "width": width,
       "height": height,
       "length": length,
       "weight": weight
      });

    print(response);
  }

  Future<void> confirm(int pickupId) async {
     await ApiClient().post('deliveries/$pickupId/confirm', {});
  }

}