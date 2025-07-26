import 'package:flutter/material.dart';
import 'package:mvvm_architectute_flutter_/main.dart';
import 'package:mvvm_architectute_flutter_/utils/Routes/routes_name.dart';
import 'package:mvvm_architectute_flutter_/view/homeScreen.dart';
import 'package:mvvm_architectute_flutter_/view/loginScreen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    final argumen = setting.arguments;
    switch (setting.name) {
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => Login_screen(),
        );
      case RoutesName.homescreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => Homescreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(body: Text('NO Routes Defined'));
          },
        );
    }
  }
}
