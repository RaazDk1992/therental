import 'constraints.dart';

import 'package:flutter/material.dart';
import 'package:therental/screens/lessee/home.dart';
import 'package:therental/screens/login.dart';
import 'package:therental/screens/register.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => HomePage());
      case loginPage:
        return MaterialPageRoute(builder: (context) => LoginPage());
      case registerPage:
        return MaterialPageRoute(builder: (context) => RegisterPage());
    }
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Text('No routes'),
            )));
  }
}
