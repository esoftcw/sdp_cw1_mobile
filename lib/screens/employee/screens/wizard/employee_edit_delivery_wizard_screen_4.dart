import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pickandgo/services/delivery_service.dart';
import 'package:pickandgo/utilities/validators/required_validation.dart';
import 'package:provider/provider.dart';
import '../employee_delivery_details.dart';
import 'employee_add_photo_screen.dart';

class EmployeeEditDeliverScreen4 extends StatelessWidget {
  EmployeeEditDeliverScreen4(
      {required this.controller,
      required this.cDuration,
      required this.cCurve});
  final _formKey = GlobalKey<FormState>();
  PageController controller;
  final cDuration;
  final cCurve;

  @override
  Widget build(BuildContext context) {
    final widthTextController = TextEditingController();
    final heightTextController = TextEditingController();
    final lengthTextController = TextEditingController();
    final weightTextController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Package Details'),
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
                      "Pacakge Details",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/mes.png'),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: widthTextController,
                      validator: requiredValidator,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      decoration: const InputDecoration(
                        suffix: Text('m'),
                        labelText: "Package Width",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: heightTextController,
                      validator: requiredValidator,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        suffix: Text('m'),
                        labelText: "Package Height",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: lengthTextController,
                      validator: requiredValidator,
                      decoration: const InputDecoration(
                        suffix: Text('m'),
                        labelText: "Package Length",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      controller: weightTextController,
                      validator: requiredValidator,
                      decoration: const InputDecoration(
                        suffix: Text('kg'),
                        labelText: "Package Weight",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: ElevatedButton(
                    child: const Text(
                      'Done',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        addPackage(context,
                            widthTextController.text,
                            heightTextController.text,
                            lengthTextController.text,
                            weightTextController.text
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  addPackage(context,  width, height, length, weight) async {
    EasyLoading.show(status: 'Saving...');
    try {
      await Provider
          .of<DeliveryService>(context, listen: false)
            //TODO get package id
          .addPackage("23", width, height, length, weight);
      Navigator.of(context)
          .pushNamed(EmployeeDeliveryDetailsScreen.routeName);
      EasyLoading.dismiss();
    } catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
      EasyLoading.dismiss();
    }
  }
}
