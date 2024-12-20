import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/food_details_page_1.dart';
import 'package:sizer/sizer.dart';

import '../classes/dictionary/color_dictionary.dart';
import '../classes/dictionary/text_dictionary.dart';

class FoodCategoryDetails extends StatefulWidget {
  const FoodCategoryDetails({super.key});

  @override
  State<FoodCategoryDetails> createState() => _FoodCategoryDetailsState();
}

class _FoodCategoryDetailsState extends State<FoodCategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      DropdownMenuDilevery(),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 3.5.h,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 20.sp,
                            )),
                      ),
                      CircleAvatar(
                        backgroundColor: lightGray,
                        radius: 3.5.h,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.settings_input_component_outlined,
                              size: 20.sp,
                            )),
                      ),
                    ],
                  ),
                  Text(
                    "Popular Burgers",
                    style: CommonTextStyle.heading
                        .merge(const TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 50.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.1, crossAxisCount: 2),
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
            Padding(
              padding: EdgeInsets.all(5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Open Restaurants",
                    style: CommonTextStyle.heading
                        .merge(const TextStyle(fontWeight: FontWeight.w500)),
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
                                height: 18.h,
                                decoration: BoxDecoration(
                                    color: lightGray,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                            Text(
                              "Rose Garden Restaurant",
                              style: CommonTextStyle.heading.merge(
                                  const TextStyle(fontWeight: FontWeight.w500)),
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
            ),
          ],
        ),
      )),
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
      inputDecorationTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        hintStyle: TextStyle(
            color: lightBlack,
            fontFamily: "sen",
            fontSize: 20,
            fontWeight: FontWeight.w600),
        counterStyle: TextStyle(
            color: lightBlack,
            fontFamily: "sen",
            fontSize: 20,
            fontWeight: FontWeight.w600),
        labelStyle: TextStyle(
            color: lightBlack,
            fontFamily: "sen",
            fontSize: 20,
            fontWeight: FontWeight.w600),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
      dropdownMenuEntries: [
        DropdownMenuEntry<String>(value: "burger", label: "burger"),
        DropdownMenuEntry<String>(value: "Sandwich", label: "Sandwich"),
        DropdownMenuEntry<String>(value: "Pizza", label: "Pizza"),
        DropdownMenuEntry<String>(value: "Hot Dog", label: "Hot Dog"),
        DropdownMenuEntry<String>(value: "Coffee", label: "Coffee"),
      ],
      hintText: "burger",
      onSelected: (value) {
        setState(() {
          selectedValue = value;
        });
      },
    );
  }
}
