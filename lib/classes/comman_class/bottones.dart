import 'package:flutter/material.dart';
import 'package:food_delivery_app/classes/dictionary/color_dictionary.dart';
import 'package:sizer/sizer.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final TextStyle textStyle;
  final double borderRadius;

  const CommonButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = const Color(0xffFF7622),
    this.textStyle = const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: "sen",
        fontWeight: FontWeight.w700),
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 7.h,
      minWidth: double.infinity,
      onPressed: onPressed,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}

class TextCommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final double? borderRadius;
  final Color? backgroundColor;

  const TextCommonButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.borderRadius = 8.0,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      child: Text(
        text,
        style: textStyle ??
            TextStyle(color: lightBlack, fontSize: 16, fontFamily: "sen"),
      ),
    );
  }
}
