import 'package:pickandgo/models/delivery.dart';
import 'package:pickandgo/models/pickup.dart';
import 'package:pickandgo/models/receiver.dart';
import 'package:pickandgo/models/sender.dart';

class CurrentDelivery {
  late int _id;
  late Delivery _delivery;

  int get id => _id;

  setSelectedId(int id) {
    _id = id;
  }

}