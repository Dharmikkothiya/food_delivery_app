import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/classes/comman_class/bottones.dart';

import 'package:sizer/sizer.dart';

import '../classes/dictionary/color_dictionary.dart';
import '../classes/dictionary/text_dictionary.dart';
import 'food_details_page_1.dart';

class RestaurantView02 extends StatefulWidget {
  const RestaurantView02({super.key});

  @override
  State<RestaurantView02> createState() => _RestaurantView02State();
}

int sizeSelect = 0;
int filterSelect = 0;
int deliverTimeSelect = 0;
int pricingSelect = 0;
int ratingSelect = 0;

class _RestaurantView02State extends State<RestaurantView02> {
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
                    SizedBox(
                      width: double.infinity,
                      height: 35.h,
                      child: PageView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            height: 30.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: lightGray,
                                borderRadius: BorderRadius.circular(20)),
                          );
                        },
                      ),
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
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Dialog(
                                        alignment: Alignment.center,
                                        insetPadding: EdgeInsets.all(5.w),
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Padding(
                                            padding: EdgeInsets.all(5.w),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Filter your search",
                                                        style: CommonTextStyle
                                                            .normal
                                                            .merge(TextStyle(
                                                                fontSize: 25)),
                                                      ),
                                                      IconButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        icon: CircleAvatar(
                                                          radius: 40,
                                                          backgroundColor:
                                                              lightGray,
                                                          child: const Icon(
                                                            Icons.close,
                                                            size: 40,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Text(
                                                    "Offers",
                                                    style: CommonTextStyle
                                                        .normal
                                                        .merge(const TextStyle(
                                                            fontSize: 20)),
                                                  ),
                                                  Wrap(
                                                    children: List.generate(
                                                      5,
                                                      (index) {
                                                        return Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                filterSelect =
                                                                    index;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: filterSelect ==
                                                                          index
                                                                      ? orange
                                                                      : Colors
                                                                          .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25),
                                                                  border: Border.all(
                                                                      color:
                                                                          lightGray,
                                                                      width:
                                                                          2)),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(2
                                                                            .w),
                                                                child: Text(
                                                                  "datahhhhhhhhhhh",
                                                                  style: CommonTextStyle.normal.merge(TextStyle(
                                                                      color: filterSelect ==
                                                                              index
                                                                          ? Colors
                                                                              .white
                                                                          : Colors
                                                                              .black,
                                                                      fontSize:
                                                                          25)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    "Deliver Time",
                                                    style: CommonTextStyle
                                                        .normal
                                                        .merge(const TextStyle(
                                                            fontSize: 20)),
                                                  ),
                                                  Wrap(
                                                    children: List.generate(
                                                      5,
                                                      (index) {
                                                        return Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                deliverTimeSelect =
                                                                    index;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: deliverTimeSelect ==
                                                                          index
                                                                      ? orange
                                                                      : Colors
                                                                          .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25),
                                                                  border: Border.all(
                                                                      color:
                                                                          lightGray,
                                                                      width:
                                                                          2)),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(2
                                                                            .w),
                                                                child: Text(
                                                                  "20 min",
                                                                  style: CommonTextStyle.normal.merge(TextStyle(
                                                                      color: deliverTimeSelect ==
                                                                              index
                                                                          ? Colors
                                                                              .white
                                                                          : Colors
                                                                              .black,
                                                                      fontSize:
                                                                          25)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    "Pricing",
                                                    style: CommonTextStyle
                                                        .normal
                                                        .merge(const TextStyle(
                                                            fontSize: 20)),
                                                  ),
                                                  Wrap(
                                                    children: List.generate(
                                                      5,
                                                      (index) {
                                                        return Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                pricingSelect =
                                                                    index;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: pricingSelect ==
                                                                          index
                                                                      ? orange
                                                                      : Colors
                                                                          .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25),
                                                                  border: Border.all(
                                                                      color:
                                                                          lightGray,
                                                                      width:
                                                                          2)),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(2
                                                                            .w),
                                                                child: Text(
                                                                  "\$",
                                                                  style: CommonTextStyle.normal.merge(TextStyle(
                                                                      color: pricingSelect ==
                                                                              index
                                                                          ? Colors
                                                                              .white
                                                                          : Colors
                                                                              .black,
                                                                      fontSize:
                                                                          25)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Text(
                                                    "Rating",
                                                    style: CommonTextStyle
                                                        .normal
                                                        .merge(const TextStyle(
                                                            fontSize: 20)),
                                                  ),
                                                  Wrap(
                                                    children: List.generate(
                                                      5,
                                                      (index) {
                                                        return Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              setState(() {
                                                                ratingSelect =
                                                                    index;
                                                              });
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: ratingSelect >=
                                                                          index
                                                                      ? orange
                                                                      : Colors
                                                                          .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25),
                                                                  border: Border.all(
                                                                      color:
                                                                          lightGray,
                                                                      width:
                                                                          2)),
                                                              child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(2
                                                                              .w),
                                                                  child: Icon(
                                                                    color: ratingSelect >=
                                                                            index
                                                                        ? Colors
                                                                            .white
                                                                        : Colors
                                                                            .black,
                                                                    CupertinoIcons
                                                                        .star,
                                                                  )),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 3.w,
                                                  ),
                                                  CommonButton(
                                                    text: "FILTER",
                                                    onPressed: () {},
                                                  ),
                                                  SizedBox(
                                                    height: 3.w,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
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
