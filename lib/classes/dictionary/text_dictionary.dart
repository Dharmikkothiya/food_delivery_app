import 'package:flutter/material.dart';
import 'package:food_delivery_app/classes/dictionary/color_dictionary.dart';

class CommonTextStyle {
  // Example of a bold text style
  static const TextStyle bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    fontFamily: "sen",
  );

  // Example of a normal text style
  static const TextStyle normal = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    fontFamily: "sen",
  );
  static TextStyle normalGray = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: lightBlack,
    fontFamily: "sen",
  );

  // Example of a large heading style
  static const TextStyle heading = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 26,
    fontFamily: "sen",
    color: Colors.black,
  );

  // Example of a subtitle style
  static const TextStyle subtitle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    fontFamily: "sen",
    color: Colors.grey,
  );

  // Example of a custom color style
  static TextStyle custom({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
    String fontFamily = "sen",
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }
}
