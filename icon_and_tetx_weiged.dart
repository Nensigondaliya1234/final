// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivary_app/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;


  const IconAndTextWidget({Key? key,
   required this.icon,
  required this.iconColor,
  required this.text,  
}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        SizedBox(width: 5,),
        SmallText(text:text,),
      ],
    );
  }
}
