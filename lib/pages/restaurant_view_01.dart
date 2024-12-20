import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../classes/dictionary/color_dictionary.dart';
import '../classes/dictionary/text_dictionary.dart';
import 'filter.dart';
import 'food_details_page_1.dart';

class RestaurantView01 extends StatefulWidget {
  const RestaurantView01({super.key});

  @override
  State<RestaurantView01> createState() => _RestaurantView01State();
}

int sizeSelect = 0;

class _RestaurantView01State extends State<RestaurantView01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Padding(
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
                        "Restaurant View",
                        style: TextStyle(
                            color: lightBlack,
                            fontFamily: "sen",
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: lightGray,
                      radius: 3.5.h,
                      child: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return filter();
                              },
                            );
                          },
                          icon: Icon(
                            Icons.more_horiz,
                            size: 20.sp,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 20.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: lightGray,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "pizza calzone european",
                  style: TextStyle(
                      color: lightBlack,
                      fontFamily: "sen",
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Prosciutto e funghi is a pizza variety that is topped with tomato sauce.",
                  style: TextStyle(
                      color: lightBlack,
                      fontFamily: "sen",
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                        style: CommonTextStyle.heading.merge(const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18)),
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
                        style: CommonTextStyle.heading.merge(const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
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
                        style: CommonTextStyle.heading.merge(const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                      ),
                      SizedBox(width: 5.w)
                    ],
                  ),
                ),
                Row(
                    children: List.generate(
                  3,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.all(2.5.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            sizeSelect = index;
                          });
                        },
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(3.5.w),
                            child: Text(
                              "10\"ww",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: sizeSelect == index
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: sizeSelect == index ? orange : lightGray,
                          ),
                        ),
                      ),
                    );
                  },
                )),
                const Text(
                  "Burger(10)",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                    height: 50.h,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 0.8, crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: 20.h,
                              height: 23.h,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Container(
                                        width: 15.h,
                                        height: 11.h,
                                        decoration: BoxDecoration(
                                            color: lightGray,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                    const Text(
                                      "data",
                                      style: CommonTextStyle.heading,
                                    ),
                                    Text(
                                      "Rose garden",
                                      style: CommonTextStyle.normalGray,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$70",
                                          style: CommonTextStyle.normalGray,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const FoodDetailsPage1(),
                                                  ));
                                            },
                                            child: CircleAvatar(
                                              backgroundColor: orange,
                                              child: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    )),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
