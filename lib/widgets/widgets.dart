import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

Widget useTextBoldStyle(String text, double size) {
  return (Text(
    text,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: size),
  ));
}

Widget useTextClassicStyle(String text, double size) {
  return (Text(
    text,
    style: TextStyle(fontWeight: FontWeight.normal, fontSize: size),
  ));
}

Widget smallIcons() {
  return Icon(
    Icons.expand_circle_down,
    size: 18,
  );
}

Widget smallText(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

Widget appTextFormField(IconData prefixIcon, String labelText) {
  return Container(
    height: 40,
    child: TextFormField(
        decoration: InputDecoration(
      prefixIcon: Icon(prefixIcon),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      labelText: labelText,
    )),
  ).paddingAll(4);
}


