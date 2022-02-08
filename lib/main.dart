import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pickandgo/screens/customer_home.dart';
import 'package:pickandgo/services/auth_service.dart';
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
      home: const InitApp(),
      routes: {
        RegisterForm.routeName: (ctx) => const RegisterForm(),
        LoginPage.routeName: (ctx) => const LoginPage(),
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

        return const CustomerHome();
      },
    );
  }
}