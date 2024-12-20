import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/classes/comman_class/bottones.dart';
import 'package:sizer/sizer.dart';

import '../classes/dictionary/color_dictionary.dart';
import '../classes/dictionary/text_dictionary.dart';

class FoodDetailsPage2 extends StatefulWidget {
  const FoodDetailsPage2({super.key});

  @override
  State<FoodDetailsPage2> createState() => _FoodDetailsPage2State();
}

int sizeSelect = 0;

class _FoodDetailsPage2State extends State<FoodDetailsPage2> {
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
                Stack(
                  children: [
                    Container(
                      height: 30.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: lightGray,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.w),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
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
                          const Spacer(),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 3.5.h,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  size: 20.sp,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
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
                IconButton(
                    onPressed: () {},
                    icon: SizedBox(
                      width: 50.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(CupertinoIcons.tree),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text("Uttora Coffe House"),
                        ],
                      ),
                    )),
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
                Text(
                  "Prosciutto e funghi is a pizza variety that is topped with tomato sauce.",
                  style: TextStyle(
                      color: lightBlack,
                      fontFamily: "sen",
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    const Text("SIZE:"),
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
                            child: CircleAvatar(
                              radius: 8.w,
                              backgroundColor:
                                  sizeSelect == index ? orange : lightGray,
                              child: Text(
                                "10\"",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: sizeSelect == index
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        );
                      },
                    )),
                  ],
                ),
                const Text("INGRIDENTS"),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      5,
                      (index) {
                        return CircleAvatar(
                          radius: 7.5.w,
                          backgroundColor: orange.withOpacity(0.20),
                          child: Icon(
                            Icons.add,
                            color: orange,
                          ),
                        );
                      },
                    )),
                Container(
                  width: double.infinity,
                  height: 20.h,
                  decoration: BoxDecoration(
                      color: lightGray,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(5.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("\$32"),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                              width: 35.w,
                              height: 6.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: CircleAvatar(
                                        backgroundColor: orange,
                                        child: const Center(
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                  const Text(
                                    "1",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: CircleAvatar(
                                        backgroundColor: orange,
                                        child: const Center(
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                        CommonButton(
                          text: "ADD TO CART",
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
