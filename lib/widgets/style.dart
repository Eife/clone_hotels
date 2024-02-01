import 'package:flutter/material.dart';

ButtonStyle blueButtonElevatedStyle() {
  return ButtonStyle(
      backgroundColor:
          MaterialStatePropertyAll(Colors.blue),
      foregroundColor: MaterialStatePropertyAll(Colors.white));
}

TextStyle whiteTextStyle(double size) {
  return TextStyle(color: Colors.white, fontSize: size);
}