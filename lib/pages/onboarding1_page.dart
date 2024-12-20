import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/classes/comman_class/bottones.dart';
import 'package:food_delivery_app/classes/dictionary/color_dictionary.dart';
import 'package:food_delivery_app/classes/dictionary/text_dictionary.dart';
import 'package:food_delivery_app/pages/autentication/login1_page.dart';
import 'package:sizer/sizer.dart';

class Onboarding1Page extends StatefulWidget {
  const Onboarding1Page({super.key});

  @override
  State<Onboarding1Page> createState() => _Onboarding1PageState();
}

List<Map<String, dynamic>> pageScreenData = [
  {
    "containerImage": "",
    "title": "All your favorites",
    "content":
        "Get all your loved foods in one once place,you just place the orer we do the rest"
  },
  {
    "containerImage": "",
    "title": "All your favorites1",
    "content":
        "Get all your loved foods in one once place,you just place the orer we do the rest"
  },
  {
    "containerImage": "",
    "title": "All your favorites2",
    "content":
        "Get all your loved foods in one once place,you just place the orer we do the rest"
  },
  {
    "containerImage": "",
    "title": "All your favorites3",
    "content":
        "Get all your loved foods in one once place,you just place the orer we do the rest"
  },
];
PageController tutorialPage = PageController();
int selectedPage = 0;

class _Onboarding1PageState extends State<Onboarding1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: PageView.builder(
                    controller: tutorialPage,
                    onPageChanged: (value) {
                      setState(() {
                        selectedPage = value;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: pageScreenData.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Center(
                              child: Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    color: lightGray,
                                    borderRadius: BorderRadius.circular(10),
                                  ))),
                          SizedBox(height: 4.h),
                          Text(
                            "${pageScreenData[index]["title"]}",
                            style: CommonTextStyle.heading,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            "${pageScreenData[index]["content"]}",
                            style: CommonTextStyle.normalGray,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    pageScreenData.length,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.all(2.w),
                        child: Container(
                          width: 2.w,
                          height: 2.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  selectedPage == index ? orange : lightBlack),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 4.h),
                CommonButton(
                  text: selectedPage == pageScreenData.length - 1
                      ? "GET STARTED"
                      : "NEXT",
                  onPressed: () {},
                ),
                TextCommonButton(
                  text: "Skip",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login1Page(),
                        ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
