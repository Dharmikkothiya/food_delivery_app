import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/classes/comman_class/bottones.dart';
import 'package:food_delivery_app/classes/comman_class/text_field.dart';
import 'package:food_delivery_app/classes/dictionary/color_dictionary.dart';
import 'package:food_delivery_app/classes/dictionary/text_dictionary.dart';
import 'package:food_delivery_app/pages/search_page.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: lightGray,
                          radius: 3.5.h,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notes_outlined,
                                size: 20.sp,
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                "$userName Deliver to",
                                style: TextStyle(
                                    color: orange,
                                    fontFamily: "sen",
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            DropdownMenuDilevery()
                          ],
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
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Hey $userName, ",
                          style: CommonTextStyle.normal,
                        ),
                        Text(
                          "Good $Timecondition !",
                          style: CommonTextStyle.normal.merge(
                              const TextStyle(fontWeight: FontWeight.w800)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    CommonTextFormField(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchPage(),
                            ));
                      },
                      prefixIcon: Icons.search,
                      hintText: "Search dishes, restaurants",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Categories",
                          style: CommonTextStyle.heading.merge(
                              const TextStyle(fontWeight: FontWeight.w500)),
                        ),
                        const Spacer(),
                        TextCommonButton(
                          text: "See All",
                          onPressed: () {},
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: round
                    ? 100
                    : detailMode
                        ? 300
                        : 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return round
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 4.h,
                                      backgroundColor: lightGray,
                                    ),
                                    SizedBox(
                                      width: 4.h,
                                    ),
                                    Text(
                                      "dataqqqq",
                                      style: CommonTextStyle.heading.merge(
                                          const TextStyle(
                                              fontWeight: FontWeight.w500)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        : detailMode
                            ? Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 30.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.w),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 20.w,
                                              height: 15.w,
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
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "starting",
                                                  style: CommonTextStyle
                                                      .normalGray,
                                                ),
                                                Text(
                                                  "\$70",
                                                  style: CommonTextStyle
                                                      .normalGray,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                            : Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 20.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Container(
                                          width: 20.w,
                                          height: 15.w,
                                          decoration: BoxDecoration(
                                              color: lightGray,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    const Text(
                                      "data",
                                      style: CommonTextStyle.heading,
                                    )
                                  ],
                                ));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Open Restaurants",
                          style: CommonTextStyle.heading.merge(
                              const TextStyle(fontWeight: FontWeight.w500)),
                        ),
                        const Spacer(),
                        TextCommonButton(
                          text: "See All",
                          onPressed: () {},
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 500,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.h, bottom: 1.h),
                                child: Container(
                                  width: double.infinity,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      color: lightGray,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                              Text(
                                "Rose Garden Restaurant",
                                style: CommonTextStyle.heading.merge(
                                    const TextStyle(
                                        fontWeight: FontWeight.w500)),
                              ),
                              Text(
                                "Burger - Chiken - Riche - Wings ",
                                style: CommonTextStyle.normalGray,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
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
                                      style: CommonTextStyle.heading.merge(
                                          const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18)),
                                    ),
                                    SizedBox(width: 5.w),
                                    Padding(
                                      padding: EdgeInsets.all(1.w),
                                      child: Icon(
                                        Icons.fire_truck_outlined,
                                        color: orange,
                                      ),
                                    ),
                                    Text(
                                      "Free",
                                      style: CommonTextStyle.heading.merge(
                                          const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18)),
                                    ),
                                    SizedBox(width: 5.w),
                                    Padding(
                                      padding: EdgeInsets.all(1.w),
                                      child: Icon(
                                        CupertinoIcons.time,
                                        color: orange,
                                      ),
                                    ),
                                    Text(
                                      "20 min",
                                      style: CommonTextStyle.heading.merge(
                                          const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18)),
                                    ),
                                    SizedBox(width: 5.w)
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
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
