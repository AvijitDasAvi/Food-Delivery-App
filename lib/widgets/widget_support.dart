import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
      fontSize: 20.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle headlineTextFieldStyle() {
    return TextStyle(
      fontSize: 24.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle lightTextFieldStyle() {
    return TextStyle(
      fontSize: 15.0,
      color: Colors.black38,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }
}
