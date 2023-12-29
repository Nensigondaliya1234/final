// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:food_delivary_app/widgets/small_text.dart';

import '../utils/colors.dart';
import 'big_tetx.dart';
import 'icon_and_tetx_weiged.dart';

class AppColumn extends StatelessWidget {
  final String text;
  // ignore: avoid_types_as_parameter_names
  const AppColumn({super.key, Key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, tetx: null,),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 9,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: 9,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: 9,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: 9,
            ),
            SmallText(text: "comment"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor1,
              text: "normal",
            ),
            SizedBox(
              width: 9,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
              text: "1.7km",
            ),
            SizedBox(
              width: 9,
            ),
            IconAndTextWidget(
              icon: Icons.access_alarm_rounded,
              iconColor: AppColors.iconColor2,
              text: "32min",
            ),
          ],
        ),
      ],
    );
  }
}
