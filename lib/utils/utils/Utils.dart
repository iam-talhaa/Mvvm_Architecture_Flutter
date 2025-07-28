import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UTils {
  void Toastmsg2(String msg, Color toastColor) {
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

  void SHowFlushBar(BuildContext context) {
    Flushbar(
      title: "Success 🎉",
      message: "Your profile has been updated successfully!",
      icon: Icon(Icons.check_circle, size: 32.0, color: Colors.greenAccent),
      leftBarIndicatorColor: Colors.greenAccent,
      duration: Duration(seconds: 3),
      backgroundGradient: LinearGradient(
        colors: [Colors.green.shade600, Colors.teal.shade300],
      ),
      boxShadows: [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(0.0, 2.0),
          blurRadius: 4.0,
        ),
      ],
      borderRadius: BorderRadius.circular(12),
      margin: EdgeInsets.all(8),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      animationDuration: Duration(milliseconds: 600),
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
    )..show(context);
  }
}
