import 'package:flutter/material.dart';
import 'package:pickandgo/screens/customer/screens/main_screen.dart';
import 'package:pickandgo/services/auth_service.dart';
import 'package:provider/provider.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Pick & Go',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.10,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Finest Package Delivery Service!',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const Divider(),
                  Text(
                    'randyrko',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'randeepf7@gmail.com',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(CustomerMainScreen.routeName);
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.person),
            //   title: Text('Home'),
            //   onTap: () => {},
            // ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () => {
                Provider.of<AuthService>(context, listen: false).logout()
              },
            ),
          ],
        ),
      ),
    );
  }
}
