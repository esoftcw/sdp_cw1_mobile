import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pickandgo/clients/api_client.dart';
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

  Future<void> makePickUp(Pickup pickup) async {
     await ApiClient().post('pickup', {
        "pickup": jsonEncode(pickup.toJson())
      });
  }

}