import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/classes/comman_class/bottones.dart';
import 'package:food_delivery_app/classes/comman_class/text_field.dart';
import 'package:food_delivery_app/classes/dictionary/color_dictionary.dart';
import 'package:food_delivery_app/classes/dictionary/text_dictionary.dart';
import 'package:sizer/sizer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var number = 0;
  bool round = false;
  bool detailMode = true;
  static String userName = "halal";
  static String Timecondition = "afternoon";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: lightGray,
                          radius: 3.5.h,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new_outlined,
                                size: 20.sp,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Search",
                            style: TextStyle(
                                color: lightBlack,
                                fontFamily: "sen",
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Spacer(),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 3.5.h,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                    size: 20.sp,
                                  )),
                            ),
                            Positioned(
                              top: -10,
                              right: -10,
                              child: CircleAvatar(
                                  backgroundColor: orange,
                                  radius: 2.h,
                                  child: Text(
                                    "$number",
                                    style: const TextStyle(color: Colors.white)
                                        .merge(CommonTextStyle.normal),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CommonTextFormField(
                      prefixIcon: Icons.search,
                      hintText: "Pizza",
                      suffixIcon: CupertinoIcons.clear_circled_solid,
                    ),
                    Text(
                      "Recent Keywords",
                      style: CommonTextStyle.heading
                          .merge(const TextStyle(fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: EdgeInsets.all(3.w),
                          child: Center(
                            child: Text(
                              "dataqqqq",
                              style: CommonTextStyle.heading.merge(
                                  const TextStyle(fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Suggested Restaurants",
                      style: CommonTextStyle.heading
                          .merge(const TextStyle(fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 350,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 3.h, bottom: 1.h),
                                    child: Container(
                                      width: 10.h,
                                      height: 8.h,
                                      decoration: BoxDecoration(
                                          color: lightGray,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pansi Restaurant",
                                        style: CommonTextStyle.heading.merge(
                                            const TextStyle(
                                                fontWeight: FontWeight.w500)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(1.w),
                                              child: Icon(
                                                CupertinoIcons.star,
                                                color: orange,
                                              ),
                                            ),
                                            Text(
                                              "4.7",
                                              style: CommonTextStyle.heading
                                                  .merge(const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 18)),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(),
                            ],
                          );
                        },
                      ),
                    ),
                    Text(
                      "Popular Fast food",
                      style: CommonTextStyle.heading
                          .merge(const TextStyle(fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                        width: double.infinity,
                        height: 350,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.w),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 40.w,
                                              height: 10.h,
                                              decoration: BoxDecoration(
                                                  color: lightGray,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            const Text(
                                              "data",
                                              style: CommonTextStyle.heading,
                                            ),
                                            Text(
                                              "starting",
                                              style: CommonTextStyle.normalGray,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ));
                          },
                        )),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class DropdownMenuDilevery extends StatefulWidget {
  @override
  _DropdownMenuDileveryState createState() => _DropdownMenuDileveryState();
}

class _DropdownMenuDileveryState extends State<DropdownMenuDilevery> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      inputDecorationTheme: const InputDecorationTheme(
        alignLabelWithHint: true,
        hintStyle: TextStyle(fontSize: 16),
        labelStyle: TextStyle(fontSize: 16),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
      dropdownMenuEntries: const [
        DropdownMenuEntry<String>(
            value: "Lab office", label: "userName Lab office"),
        DropdownMenuEntry<String>(value: "Home", label: "Home"),
      ],
      onSelected: (value) {
        setState(() {
          selectedValue = value;
        });
      },
    );
  }
}
