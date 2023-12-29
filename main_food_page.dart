// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:food_delivary_app/widgets/big_tetx.dart';
import 'package:food_delivary_app/widgets/small_text.dart';

import '../utils/colors.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print, prefer_interpolation_to_compose_strings
    print("current height is " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(top: 45, bottom: 15),
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Gujrat",
                        color: AppColors.mainColor, tetx: null,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Gathiya",
                            color: Colors.black54,
                          ),
                          // ignore: prefer_const_constructors
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                      // ignore: prefer_const_constructors
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
            ),
            ),
        ],
      ),
    );
  }
}
