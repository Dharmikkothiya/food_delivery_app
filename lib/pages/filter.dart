import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/restaurant_view_02.dart';
import 'package:sizer/sizer.dart';

import '../classes/comman_class/bottones.dart';
import '../classes/dictionary/color_dictionary.dart';
import '../classes/dictionary/text_dictionary.dart';

Dialog filter() {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Filter your search",
                    style:
                        CommonTextStyle.normal.merge(TextStyle(fontSize: 25)),
                  ),
                  IconButton(
                    onPressed: () {
                      var context;
                      Navigator.pop(context as BuildContext);
                    },
                    icon: CircleAvatar(
                      radius: 40,
                      backgroundColor: lightGray,
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
                style:
                    CommonTextStyle.normal.merge(const TextStyle(fontSize: 20)),
              ),
              Wrap(
                children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            filterSelect = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color:
                                  filterSelect == index ? orange : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: lightGray, width: 2)),
                          child: Padding(
                            padding: EdgeInsets.all(2.w),
                            child: Text(
                              "datahhhhhhhhhhh",
                              style: CommonTextStyle.normal.merge(TextStyle(
                                  color: filterSelect == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 25)),
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
                style:
                    CommonTextStyle.normal.merge(const TextStyle(fontSize: 20)),
              ),
              Wrap(
                children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            deliverTimeSelect = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: deliverTimeSelect == index
                                  ? orange
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: lightGray, width: 2)),
                          child: Padding(
                            padding: EdgeInsets.all(2.w),
                            child: Text(
                              "20 min",
                              style: CommonTextStyle.normal.merge(TextStyle(
                                  color: deliverTimeSelect == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 25)),
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
                style:
                    CommonTextStyle.normal.merge(const TextStyle(fontSize: 20)),
              ),
              Wrap(
                children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pricingSelect = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: pricingSelect == index
                                  ? orange
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: lightGray, width: 2)),
                          child: Padding(
                            padding: EdgeInsets.all(2.w),
                            child: Text(
                              "\$",
                              style: CommonTextStyle.normal.merge(TextStyle(
                                  color: pricingSelect == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 25)),
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
                style:
                    CommonTextStyle.normal.merge(const TextStyle(fontSize: 20)),
              ),
              Wrap(
                children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ratingSelect = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color:
                                  ratingSelect >= index ? orange : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: lightGray, width: 2)),
                          child: Padding(
                              padding: EdgeInsets.all(2.w),
                              child: Icon(
                                color: ratingSelect >= index
                                    ? Colors.white
                                    : Colors.black,
                                CupertinoIcons.star,
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
}

void setState(Null Function() param0) {}
