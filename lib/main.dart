import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pickandgo/screens/customer/screens/add_new_delivery_screen.dart';
import 'package:pickandgo/screens/customer/screens/customer_delivery_details.dart';
import 'package:pickandgo/screens/customer/screens/main_screen.dart';
import 'package:pickandgo/screens/customer_home.dart';
import 'package:pickandgo/screens/employee/screens/main_screen.dart';
import 'package:pickandgo/services/auth_service.dart';
import 'package:pickandgo/services/delivery_service.dart';
import 'package:pickandgo/state/pickup_builder.dart';
import 'package:provider/provider.dart';
import 'screens/login.dart';
import 'screens/register.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthService>(
        create: (context) => AuthService(),
      ),
      ChangeNotifierProvider<DeliveryService>(
        create: (context) => DeliveryService(),
      ),
      Provider<PickupBuilder>(create: (context) => PickupBuilder())
    ],
    child: TripAndGo(),
  ));
}

class TripAndGo extends StatelessWidget {
  const TripAndGo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lato',
      ),
      builder: EasyLoading.init(),
      home: const InitApp(),
      routes: {
        RegisterForm.routeName: (ctx) => const RegisterForm(),
        LoginPage.routeName: (ctx) => const LoginPage(),
        CustomerMainScreen.routeName: (ctx) => const CustomerMainScreen(),
        CustomerAddNewDeliver.routeName: (ctx) => const CustomerAddNewDeliver(),
        CustomerDeliveryDetailsScreen.routeName: (ctx) => const CustomerDeliveryDetailsScreen(),
      },
    );
  }
}

class InitApp extends StatelessWidget {
  const InitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer<AuthService>(
      builder: (_, authService, __) {
        if (!authService.isLoggedIn) {
          return const LoginPage();
        }

        if (authService.role == "customer") {
          return const CustomerMainScreen();
        }

        return  const EmployeeMainScreen();
      },
    );
  }
}