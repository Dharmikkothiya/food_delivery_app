import 'package:flutter/material.dart';
import 'package:food_delivery_app/classes/comman_class/bottones.dart';
import 'package:food_delivery_app/classes/comman_class/text_field.dart';
import 'package:food_delivery_app/classes/dictionary/color_dictionary.dart';
import 'package:food_delivery_app/classes/dictionary/text_dictionary.dart';
import 'package:food_delivery_app/pages/autentication/forget_password.dart';
import 'package:food_delivery_app/pages/autentication/sing_up.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:sizer/sizer.dart';

class Login1Page extends StatefulWidget {
  const Login1Page({super.key});

  @override
  State<Login1Page> createState() => _Login1PageState();
}

final GlobalKey<FormState> loginForm = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool remember = false;

class _Login1PageState extends State<Login1Page> {
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
                    child: Padding(
                      padding: EdgeInsets.all(5.w),
                      child: SingleChildScrollView(
                        child: Form(
                          key: loginForm,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "EMAIL",
                                style: CommonTextStyle.normal,
                              ),
                              CommonTextFormField(
                                hintText: "example@gmail.com",
                                controller: emailController,
                              ),
                              const Text(
                                "PASSWORD",
                                style: CommonTextStyle.normal,
                              ),
                              CommonTextFormField(
                                hintText: "",
                                obscureText: true,
                                suffixIcon: Icons.visibility_off,
                                controller: passwordController,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.centerLeft,
                                      onPressed: () {
                                        setState(() {
                                          remember = !remember;
                                        });
                                      },
                                      icon: Icon(remember
                                          ? Icons.check_box_outlined
                                          : Icons
                                              .check_box_outline_blank_outlined)),
                                  Text(
                                    "Remember me",
                                    style: CommonTextStyle.normalGray,
                                  ),
                                  Spacer(),
                                  TextCommonButton(
                                    text: "Forgot password",
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ForgetPassword(),
                                          ));
                                    },
                                    textStyle: TextStyle(
                                        color: orange, fontFamily: "sen"),
                                  )
                                ],
                              ),
                              CommonButton(
                                text: "LOG IN",
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomePage(),
                                      ));
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Don’t have an account?",
                                    style: CommonTextStyle.normal,
                                  ),
                                  TextCommonButton(
                                    text: "SIGN UP",
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SingUp(),
                                          ));
                                    },
                                    textStyle: TextStyle(
                                        color: orange, fontFamily: "sen"),
                                  )
                                ],
                              ),
                              const Center(
                                child: Text(
                                  "Or",
                                  style: CommonTextStyle.normal,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      backgroundColor: Color(0Xff395998),
                                      radius: 4.5.h,
                                      child: Image.asset(
                                          "assets/images/facebook_logo.png"),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      backgroundColor: Color(0Xff169CE8),
                                      radius: 4.5.h,
                                      child: Image.asset(
                                          "assets/images/twitter_logo.png"),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      backgroundColor: Color(0Xff1B1F2F),
                                      radius: 4.5.h,
                                      child: Image.asset(
                                          "assets/images/apple_logo.png"),
                                    ),
                                  ),
                                ],
                              )
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
