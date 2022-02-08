import 'package:flutter/material.dart';
import 'package:pickandgo/services/auth_service.dart';
import 'package:provider/provider.dart';

class CustomerHome extends StatelessWidget {
  const CustomerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            const Text("Customer Home"),
            ElevatedButton(
                onPressed: () => {
                  Provider.of<AuthService>(context, listen: false).logout()
                },
                child: const Text("Logout")
            )
          ],
        )
      ),
    );
  }
}
