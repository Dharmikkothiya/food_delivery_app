import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/classes/dictionary/color_dictionary.dart';
import 'package:sizer/sizer.dart';

import 'onboarding1_page.dart';

class Slash2Page extends StatefulWidget {
  const Slash2Page({super.key});

  @override
  State<Slash2Page> createState() => _Slash2PageState();
}

class _Slash2PageState extends State<Slash2Page> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Onboarding1Page(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -15.h,
            left: -15.w,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: SweepGradient(
                    colors: [
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                      Colors.white,
                      lightGray,
                    ],
                  )),
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/Logo.png",
            ),
          ),
          Positioned(
            bottom: -27.h,
            right: -27.w,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: SweepGradient(
                    colors: [
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange,
                      Colors.white,
                      orange
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
