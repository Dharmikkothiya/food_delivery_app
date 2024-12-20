import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/autentication/location_add_page.dart';
import 'package:sizer/sizer.dart';

import '../../classes/comman_class/bottones.dart';
import '../../classes/comman_class/text_field.dart';
import '../../classes/dictionary/color_dictionary.dart';
import '../../classes/dictionary/text_dictionary.dart';
import 'forget_password.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

final GlobalKey<FormState> loginForm = GlobalKey<FormState>();
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController rePasswordController = TextEditingController();

class _SingUpState extends State<SingUp> {
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
                    "Sing Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'sen',
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "Please sign up to get started",
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "NAME",
                                style: CommonTextStyle.normal,
                              ),
                              CommonTextFormField(
                                hintText: "John doe",
                                controller: nameController,
                              ),
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
                              const Text(
                                "RE-TYPE PASSWORD",
                                style: CommonTextStyle.normal,
                              ),
                              CommonTextFormField(
                                hintText: "",
                                obscureText: true,
                                suffixIcon: Icons.visibility_off,
                                controller: rePasswordController,
                              ),
                              CommonButton(
                                text: "SIGN UP",
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LocationAddPage(),
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
