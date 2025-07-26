import 'package:flutter/material.dart';
import 'package:mvvm_architectute_flutter_/utils/Routes/routes_name.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.homescreen);
              },
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}
