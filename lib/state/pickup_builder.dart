import 'package:pickandgo/models/pickup.dart';
import 'package:pickandgo/models/receiver.dart';
import 'package:pickandgo/models/sender.dart';

class PickupBuilder {
  Pickup _pickup = Pickup();

  Pickup? get pickup => _pickup;

  PickupBuilder setSender(Sender sender) {
    _pickup = _pickup.copyWith(sender: sender);
    return this;
  }

  PickupBuilder setDateTime(DateTime dateTime) {
    _pickup = _pickup.copyWith(pickupDateTime: dateTime);
    return this;
  }

  PickupBuilder setPackageDetails(String details) {
    _pickup = _pickup.copyWith(packageDetails: details);
    return this;
  }

  PickupBuilder setReceiver(Receiver receiver) {
    _pickup = _pickup.copyWith(receiver: receiver);
    return this;
  }
}