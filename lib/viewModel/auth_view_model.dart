import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_architectute_flutter_/repository/auth_repository.dart';
import 'package:mvvm_architectute_flutter_/utils/utils/Utils.dart';

class AuthViewModel with ChangeNotifier {
  final _myrep = Auth_repository();

  Future<void> LoginApi(data, BuildContext context) async {
    _myrep
        .loginApi(data)
        .then((_) {
          print(kDebugMode) {
            print('Successfully hitted');
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Form Submitted Successfully!')),
          );
        })
        .onError((e, s) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(e.toString())));

          print(kDebugMode) {
            print('Error hitted');
          }
        });
  }
}
