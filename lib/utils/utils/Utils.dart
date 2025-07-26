import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UTils {
  void Toastmsg(String msg, Color toastColor) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: toastColor,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
