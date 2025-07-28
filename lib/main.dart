import 'package:flutter/material.dart';
import 'package:mvvm_architectute_flutter_/utils/Routes/routes.dart';
import 'package:mvvm_architectute_flutter_/utils/Routes/routes_name.dart';
import 'package:mvvm_architectute_flutter_/viewModel/auth_view_model.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthViewModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.login,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
