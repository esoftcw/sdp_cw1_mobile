import 'package:flutter/material.dart';
import 'package:pickandgo/models/sender.dart';
import 'package:pickandgo/state/pickup_builder.dart';
import 'package:pickandgo/utilities/validators/required_validation.dart';
import 'package:provider/provider.dart';
import '/screens/customer/widgets/wizard_buttons.dart';

class CustomerNewDeliverScreen1 extends StatelessWidget {
  CustomerNewDeliverScreen1(
      {required this.controller,
      required this.cDuration,
      required this.cCurve});
  final _formKey = GlobalKey<FormState>();
  PageController controller;
  final cDuration;
  final cCurve;

  @override
  Widget build(BuildContext context) {
    final senderFNameTextController = TextEditingController();
    final senderLNameTextController = TextEditingController();
    final senderAddress = TextEditingController();
    final senderContactNumber = TextEditingController();
    final senderAltContactNumber = TextEditingController();
    final senderEmail = TextEditingController();

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
                      "Sender's Details",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: senderFNameTextController,
                      validator: requiredValidator,
                      decoration: const InputDecoration(
                        labelText: "Sender's First Name",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: senderLNameTextController,
                      validator: requiredValidator,
                      decoration: const InputDecoration(
                        labelText: "Sender's Last Name",
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
                      controller: senderAddress,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: "Sender's Address",
                        alignLabelWithHint: true,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.phone,
                      controller: senderContactNumber,
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
                      controller: senderAltContactNumber,
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
                      controller: senderEmail,
                      decoration: const InputDecoration(
                        labelText: "Sender Email Address",
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
            WizardButtons(
              controller: controller,
              cDuration: cDuration,
              cCurve: cCurve,
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  Sender sender = Sender(
                      firstName: senderFNameTextController.text,
                      lastName: senderLNameTextController.text,
                      address: senderAddress.text,
                      cityId: "12", // TODO
                      contactNumber: senderContactNumber.text
                  );
                  Provider
                      .of<PickupBuilder>(context, listen: false)
                      .setSender(sender);
                  return true;
                }
                return false;
              },
            )
          ],
        ),
      ),
    );
  }
}
