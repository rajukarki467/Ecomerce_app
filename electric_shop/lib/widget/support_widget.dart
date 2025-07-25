import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24.0,
    );
  }

  static TextStyle lightTextFieldStyle() {
    return TextStyle(color: Colors.black45, fontSize: 20.0);
  }
}
