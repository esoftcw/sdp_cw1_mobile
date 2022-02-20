import 'package:flutter/material.dart';
import 'package:pickandgo/models/delivery_summary.dart';
import 'package:pickandgo/services/delivery_service.dart';
import 'package:provider/provider.dart';
import '/screens/employee/widgets/employee_sidebar.dart';
import 'employee_delivery_details.dart';

class EmployeeMainScreen extends StatefulWidget {
  static const routeName = '/empmain';
  const EmployeeMainScreen({Key? key}) : super(key: key);

  @override
  _EmployeeMainScreenState createState() => _EmployeeMainScreenState();
}

class _EmployeeMainScreenState extends State<EmployeeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EmployeeSideBar(),
      appBar: AppBar(
        title: Text('Pick & Go : Employee Portal'),
      ),
      body: Consumer<DeliveryService> (
        builder: (_, deliveryService, __) {
      return FutureBuilder<List<DeliverySummary>>(
          future: deliveryService.getByUser(),
          builder: (_, AsyncSnapshot<List<DeliverySummary>> deliveries) {
            if (!deliveries.hasData) {
              return Container();
            }
            return ListView.builder(
                itemCount: deliveries.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(
                          EmployeeDeliveryDetailsScreen.routeName,
                          arguments: {
                              "id": deliveries.data![index].id.toString()
                          }
                      );
                    },
                    child: Card(
                      elevation: 5,
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(5),
                        title: Text(deliveries.data![index].from),
                        subtitle: Text(deliveries.data![index].from),
                        trailing: Text(deliveries.data![index].type),
                      ),
                    ),
                  );
                }
            );
          }
      );
    },
    ),
    );
  }
}
