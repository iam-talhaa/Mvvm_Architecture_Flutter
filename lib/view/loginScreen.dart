import 'package:flutter/material.dart';
import 'package:mvvm_architectute_flutter_/res/AppColors.dart';
import 'package:mvvm_architectute_flutter_/res/Component/RoundedButton.dart';
import 'package:mvvm_architectute_flutter_/utils/Routes/routes_name.dart';
import 'package:mvvm_architectute_flutter_/utils/utils/Utils.dart';
import 'package:mvvm_architectute_flutter_/viewModel/auth_view_model.dart';
import 'package:provider/provider.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  bool _obscurePassword = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _authViewmodel = Provider.of<AuthViewModel>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(height: 20),

            TextFormField(
              controller: _emailcontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email address',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Email is required';
                } else if (!RegExp(
                  r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$',
                ).hasMatch(value.trim())) {
                  return 'Enter a valid email';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            // Add this in your State class
            TextFormField(
              controller: _passwwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Password is required';
                } else if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            Rounded_button(
              name: "Login",
              B_color: Colors.blue,
              ontap: () {
                Map data = {
                  'email': _emailcontroller.text.toString(),
                  'password': _passwwordController.text.toString(),
                };
                _authViewmodel.LoginApi(data, context);
                print('ApiHit');
              },
              b_Width: 120.0,
              b_height: 45.0,
              textcolor: Appcolors.White_color,
            ),
          ],
        ),
      ),
    );
  }
}
