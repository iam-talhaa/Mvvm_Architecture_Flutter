import 'package:flutter/material.dart';
import 'package:mvvm_architectute_flutter_/utils/Routes/routes_name.dart';
import 'package:mvvm_architectute_flutter_/utils/utils/Utils.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _emailcontroller,
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Email is required';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _passwwordController,
            decoration: InputDecoration(labelText: 'Passwordd'),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Password is required';
              }
              return null;
            },
          ),
          Center(
            child: InkWell(
              onTap: () {
                //  UTils.SHowFlushBar(context);
                Navigator.pushNamed(context, RoutesName.homescreen);
              },
              child: InkWell(onTap: () {}, child: Text("Login")),
            ),
          ),
        ],
      ),
    );
  }
}
