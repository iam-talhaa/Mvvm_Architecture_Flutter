import 'package:flutter/material.dart';
import 'package:mvvm_architectute_flutter_/view/loginScreen.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login_screen());
  }
}
