import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/autentication/login1_page.dart';
import 'package:sizer/sizer.dart';

import '../../classes/comman_class/bottones.dart';
import '../../classes/comman_class/text_field.dart';
import '../../classes/dictionary/text_dictionary.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

TextEditingController codeController = TextEditingController();

class _VerificationCodeState extends State<VerificationCode> {
  late Timer _timer;
  int _start = 120; // 2 minutes = 120 seconds

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start <= 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child:
                    Image.asset("assets/images/blackloginbackgroundvector.png"),
              ),
              Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 18.h),
                  const Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'sen',
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "Please sign in to your existing account",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'sen',
                        fontSize: 16,
                        fontWeight: FontWeight.w100),
                  ),
                  SizedBox(height: 5.5.h),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(5.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "CODE",
                                  style: CommonTextStyle.normal,
                                ),
                                const Spacer(),
                                TextCommonButton(
                                  text: "Resend",
                                  textStyle: const TextStyle(
                                    fontFamily: "sen",
                                    decoration: TextDecoration.underline,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const VerificationCode(),
                                        ));
                                  },
                                ),
                                const Text(
                                  "in.",
                                  style: CommonTextStyle.normal,
                                ),
                                Text(
                                  formatTime(_start),
                                  style: CommonTextStyle.normal,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 15.w,
                                    child: CommonTextFormField(
                                      controller: codeController,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 15.w,
                                    child: CommonTextFormField(
                                      controller: codeController,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 15.w,
                                    child: CommonTextFormField(
                                      controller: codeController,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 15.w,
                                    child: CommonTextFormField(
                                      controller: codeController,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            CommonButton(
                              text: "VERIFY",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Login1Page(),
                                    ));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
