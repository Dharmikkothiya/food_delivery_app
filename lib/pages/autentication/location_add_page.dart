import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../classes/comman_class/bottones.dart';
import '../../classes/dictionary/color_dictionary.dart';
import '../../classes/dictionary/text_dictionary.dart';
import 'login1_page.dart';

class LocationAddPage extends StatefulWidget {
  const LocationAddPage({super.key});

  @override
  State<LocationAddPage> createState() => _LocationAddPageState();
}

int selectedPage = 0;

class _LocationAddPageState extends State<LocationAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: lightGray,
                      borderRadius: BorderRadius.circular(80)),
                ),
                SizedBox(height: 14.h),
                CommonButton(
                  text: "ACCESS LOCATION",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login1Page(),
                        ));
                  },
                ),
                SizedBox(height: 6.h),
                Text(
                  " DFOOD WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP",
                  style: CommonTextStyle.normalGray,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
