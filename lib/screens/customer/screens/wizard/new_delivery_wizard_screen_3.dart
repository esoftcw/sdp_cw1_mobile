import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pickandgo/models/receiver.dart';
import 'package:pickandgo/services/delivery_service.dart';
import 'package:pickandgo/state/pickup_builder.dart';
import 'package:pickandgo/utilities/validators/required_validation.dart';
import 'package:provider/provider.dart';
import '../customer_delivery_details.dart';
import '/screens/customer/widgets/wizard_buttons.dart';

class CustomerNewDeliverScreen3 extends StatelessWidget {
  CustomerNewDeliverScreen3(
      {required this.controller,
      required this.cDuration,
      required this.cCurve});
  final _formKey = GlobalKey<FormState>();
  PageController controller;
  final cDuration;
  final cCurve;

  @override
  Widget build(BuildContext context) {
    final receiverFNameTextController = TextEditingController();
    final receiverLNameTextController = TextEditingController();
    final receiverAddress = TextEditingController();
    final contactController = TextEditingController();
    final altContactController = TextEditingController();
    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('New Pickup Delivery Inquiry'),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      "Receiver's Details",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: receiverFNameTextController,
                      validator: requiredValidator,
                      decoration: const InputDecoration(
                        labelText: "Receiver's  First Name",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: receiverLNameTextController,
                      validator: requiredValidator,
                      decoration: const InputDecoration(
                        labelText: "Receiver's Last Name",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.streetAddress,
                      validator: requiredValidator,
                      maxLines: 5,
                      textAlign: TextAlign.start,
                      controller: receiverAddress,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: "Receiver's Address",
                        alignLabelWithHint: true,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: contactController,
                      decoration: const InputDecoration(
                        labelText: "Contact Number",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: altContactController,
                      decoration: const InputDecoration(
                        labelText: "Alt Contact Number",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Receiver's Email Address",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'Prev',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    controller.previousPage(duration: cDuration, curve: cCurve);
                  },
                ),
                TextButton(
                  child: const Text(
                    'Request Pickup',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Receiver receiver = Receiver(
                          firstName: receiverFNameTextController.text,
                          lastName: receiverLNameTextController.text,
                          address: receiverAddress.text,
                          cityId: "12", // TODO
                          contactNumber: contactController.text
                      );

                     var pickup = Provider
                          .of<PickupBuilder>(context, listen: false)
                          .setReceiver(receiver)
                          .pickup;

                     createPickUp(context, pickup);

                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  createPickUp(context, pickup) async {
    EasyLoading.show(status: 'Saving...');
    try {
      await Provider
          .of<DeliveryService>(context, listen: false)
          .makePickUp(pickup!);
      EasyLoading.dismiss();
    } catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
      EasyLoading.dismiss();
    }
  }

}

