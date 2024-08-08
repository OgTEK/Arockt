import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastHelper {
  /// Show a short toast message
  static void showShortToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,  // Toast duration: LENGTH_SHORT
        gravity: ToastGravity.BOTTOM,     // Position: BOTTOM, TOP, CENTER
        backgroundColor: Colors.black,    // Background color of the toast
        textColor: Colors.white,          // Text color of the toast
        fontSize: 16.0                    // Font size
    );
  }

  /// Show a long toast message
  static void showLongToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,   // Toast duration: LENGTH_LONG
        gravity: ToastGravity.BOTTOM,     // Position: BOTTOM, TOP, CENTER
        backgroundColor: Colors.black,    // Background color of the toast
        textColor: Colors.white,          // Text color of the toast
        fontSize: 16.0                    // Font size
    );
  }

  /// Show a custom-positioned toast message
  static void showCustomToast({
    required String message,
    ToastGravity gravity = ToastGravity.BOTTOM,
    Color backgroundColor = Colors.black,
    Color textColor = Colors.white,
    double fontSize = 16.0,
    Toast toastLength = Toast.LENGTH_SHORT,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      gravity: gravity,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: fontSize,
    );
  }

  /// Cancel all active toasts
  static void cancelToast() {
    Fluttertoast.cancel();
  }
}
