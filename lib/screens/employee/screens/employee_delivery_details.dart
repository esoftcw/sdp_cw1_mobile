import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pickandgo/models/delivery.dart';
import 'package:pickandgo/models/delivery_summary.dart';
import 'package:pickandgo/screens/employee/screens/wizard/employee_add_photo_screen.dart';
import 'package:pickandgo/services/delivery_service.dart';
import 'package:pickandgo/state/current_delivery.dart';
import 'package:provider/provider.dart';
import '/screens/employee/widgets/employee_sidebar.dart';
import 'package:flutter/services.dart';
import 'employee_add_edit_delivery_screen.dart';

class EmployeeDeliveryDetailsScreen extends StatefulWidget {
  static const routeName = '/Emppdetails';
   EmployeeDeliveryDetailsScreen({Key? key,}) : super(key: key);

  @override
  _EmployeeDeliveryDetailsScreenState createState() =>
      _EmployeeDeliveryDetailsScreenState();
}

class _EmployeeDeliveryDetailsScreenState
    extends State<EmployeeDeliveryDetailsScreen> {
  final trackingNumAddress = TextEditingController();



  copyToClipBoard(String trackNo) {
    Clipboard.setData(ClipboardData(text: trackNo)).then(
      (_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Tracking Number Copied to Your Clipboard"),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    /// final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      drawer: EmployeeSideBar(),
      appBar: AppBar(
        title: Text('Pacakge Delivery Details'),
        actions: [
          IconButton(
              onPressed: () {
                confirm(context);
              },
              icon: Icon(Icons.check))
        ],
      ),
      body: SingleChildScrollView(
        child: Consumer<DeliveryService>(
          builder: (_, deliveryService ,__) {
            return FutureBuilder<Delivery>(
                future: deliveryService.getDelivery(Provider.of<CurrentDelivery>(context).id),
                builder: (_, AsyncSnapshot<Delivery> delivery) {
                  if (delivery.connectionState == ConnectionState.waiting) {
                    EasyLoading.show(status: "Loading ...");
                  }
                  if(!delivery.hasData) {
                    return Container();
                  }
                  EasyLoading.dismiss();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () => copyToClipBoard(delivery.data!.no),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Your Request Number '),
                                  const SizedBox(height: 10),
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    child: Text(
                                      delivery.data!.no,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Tap here to copy',
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Package Deliver Status'),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        delivery.data!.status,
                                        style: TextStyle(fontSize: 20, color: Colors.lightGreen),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        delivery.data!.statusLog,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Assigned Driver'),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        delivery.data!.driver,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        'Vehicle Type : Van',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Card(
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 16.0, left: 16.0),
                                child: Text('Operational Center Route'),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Sender’s Center'),
                                        const SizedBox(height: 10),
                                        Container(
                                          padding: const EdgeInsets.all(5.0),
                                          width: MediaQuery.of(context).size.width * 0.37,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(7.0),
                                          ),
                                          child: Text(
                                            delivery.data!.senderAddress,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Reciever’s Center'),
                                        const SizedBox(height: 10),
                                        Container(
                                          padding: const EdgeInsets.all(5.0),
                                          width: MediaQuery.of(context).size.width * 0.37,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(7.0),
                                          ),
                                          child: Text(
                                            delivery.data!.receiverAddress,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Pickup Date'),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Text(
                                    delivery.data!.pickDateTime,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text('Pickup Time'),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Text(
                                    delivery.data!.pickDateTime,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total Delivery Cost'),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Text(
                                    'LKR ${delivery.data!.cost}/=',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sender’s Details"),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sender’s First Name : ${delivery.data!.senderFirstname}',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Sender’s Last Name : ${delivery.data!.senderLastname}',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Contact : ${delivery.data!.senderContactNumber}',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Alt Contact :-',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Email : ${delivery.data!.senderEmail}',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Address : ${delivery.data!.senderAddress}',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Receiver's Details"),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Receiver's First Name : ${delivery.data!.receiverFirstname}",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Receiver's Last Name : ${delivery.data!.receiverLastname}",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Contact : ${delivery.data!.receiverContactNumber}",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Alt Contact : -",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Email : ${delivery.data!.receiverEmail}",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Address : ${delivery.data!.receiverAddress}',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Package Details"),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.only(top: 8.0, left: 7),
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Width: ${delivery.data!.width} m",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "Height: ${delivery.data!.height} m",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "Length: ${delivery.data!.length} m",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "Weight: ${delivery.data!.weight} kg",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      const SizedBox(width: 5),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Package Description'),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.all(5.0),
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Text(
                                    delivery.data!.packageDescription,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: const Text("Packages"),
        onPressed: () {
          Navigator.of(context)
              .pushNamed(EmployeeEditNewDeliver.routeName);
        },
      ),
    );
  }

  confirm(context) async {
    EasyLoading.show(status: 'Confirming...');
    try {
      var id = Provider.of<CurrentDelivery>(context).id;
       await Provider
          .of<DeliveryService>(context, listen: false)
          .confirm(id);
      EasyLoading.dismiss();
    } catch(e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
      EasyLoading.dismiss();
    }
  }
}
