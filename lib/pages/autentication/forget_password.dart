import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/autentication/verification_code.dart';
import 'package:sizer/sizer.dart';

import '../../classes/comman_class/bottones.dart';
import '../../classes/comman_class/text_field.dart';
import '../../classes/dictionary/text_dictionary.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

final GlobalKey<FormState> loginForm = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();

class _ForgetPasswordState extends State<ForgetPassword> {
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
                      child: Form(
                        key: loginForm,
                        child: Padding(
                          padding: EdgeInsets.all(5.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "EMAIL",
                                style: CommonTextStyle.normal,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              CommonTextFormField(
                                hintText: "example@gmail.com",
                                controller: emailController,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              CommonButton(
                                text: "SEND CODE",
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const VerificationCode(),
                                      ));
                                },
                              ),
                            ],
                          ),
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
