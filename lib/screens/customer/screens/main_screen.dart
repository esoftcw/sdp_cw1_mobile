import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pickandgo/models/delivery_summary.dart';
import 'package:pickandgo/services/delivery_service.dart';
import 'package:provider/provider.dart';
import '../widgets/customer_sidebar.dart';
import 'add_new_delivery_screen.dart';

class CustomerMainScreen extends StatefulWidget {
  static const routeName = '/cmain';
  const CustomerMainScreen({Key? key}) : super(key: key);

  @override
  _CustomerMainScreenState createState() => _CustomerMainScreenState();
}

class _CustomerMainScreenState extends State<CustomerMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        title: Text('Pick & Go'),
      ),
      body: Consumer<DeliveryService> (
        builder: (_, deliveryService, __) {
          return FutureBuilder<List<DeliverySummary>>(
              future: deliveryService.get(),
              builder: (_, AsyncSnapshot<List<DeliverySummary>> deliveries) {

                if (!deliveries.hasData) {
                  return Container();
                }
                return ListView.builder(
                    itemCount: deliveries.data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {

                        },
                        child: Card(
                          elevation: 5,
                          margin: EdgeInsets.all(5),
                          child: ListTile(
                            contentPadding: EdgeInsets.all(5),
                            title: Text(deliveries.data![index].from),
                            subtitle: Text(deliveries.data![index].from),
                            trailing: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Track'),
                            ),
                          ),
                        ),
                      );
                    }
                );
              }
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text("New"),
        onPressed: () {
          Navigator.of(context).pushNamed(CustomerAddNewDeliver.routeName);
        },
      ),
    );
  }
}
