import 'package:flutter/material.dart';
import 'package:food_delivary_app/utils/colors.dart';
import 'package:food_delivary_app/widgets/small_text.dart';

class ExpendableTextWidgetState extends StatefulWidget {
  final String text;
  const ExpendableTextWidgetState({Key? key, required this.text})
      : super(key: key);

  @override
  State<ExpendableTextWidgetState> createState() =>
      _ExpendableTextWidgetStateState();
}

class _ExpendableTextWidgetStateState extends State<ExpendableTextWidgetState> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHight = 900 / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHight) {
      firstHalf = widget.text.substring(0, textHight.toInt());
      secondHalf =
          widget.text.substring(textHight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(text: firstHalf)
          : Column(
              children: [
                SmallText(color:AppColors.paraColor,size: 16,hight: 1.8,
                    text: hiddenText
                        // ignore: prefer_interpolation_to_compose_strings
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "show more",
                        color: AppColors.mainColor,
                      ),
                      Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_upward,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
