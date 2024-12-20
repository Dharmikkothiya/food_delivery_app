import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/slash2_page.dart';

class Slash1Page extends StatefulWidget {
  const Slash1Page({super.key});

  @override
  State<Slash1Page> createState() => _Slash1PageState();
}

class _Slash1PageState extends State<Slash1Page> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Slash2Page(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/Logo.png")),
    );
  }
}
