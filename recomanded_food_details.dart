import 'package:flutter/material.dart';
import 'package:food_delivary_app/models/products_model.dart';
import 'package:food_delivary_app/routes/route_helper.dart';
import 'package:food_delivary_app/utils/colors.dart';
import 'package:food_delivary_app/widgets/app_icon.dart';
import 'package:food_delivary_app/widgets/big_tetx.dart';
import 'package:food_delivary_app/widgets/expendable_text.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 80,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.getInitial());
                      },
                      child: AppIcon(
                        icon: Icons.clear,
                      ),
                    ),
                    const AppIcon(
                      icon: Icons.shop,
                    )
                  ],
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(20),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                    child: Center(
                        child: BigText(
                      size: 65,
                      text: "Jalebi",tetx:Product.name!)),
                  ),
                ),
                pinned: true,
                backgroundColor: AppColors.yellowColor,
                expandedHeight: 300,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "lib/assets/jalebifafada2.jpeg",
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                )),
            SliverToBoxAdapter(
                child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: const ExpendableTextWidgetState(
                      text:
                          "ExpendableTextWidgetStateExpendableTextWidgetStateExpendableTextWidgetStateExpendableTextWidgetStateExpendableTextWidgetStateExpendableTextWidgetStatevvvExpendableTextWidgetStatevExpendableTextWidgetStatevExpendableTextWidgetStatevExpendableTextWidgetStatevExpendableTextWidgetStatevExpendableTextWidgetStatev"),
                )
              ],
            )),
          ],
        ),
        bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20 * 2.5,
              right: 20 * 2.5,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: prefer_const_constructors
                AppIcon(
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),

                BigText(
                  text: "\$ ${Product.price!}x "+"0",
                  color: AppColors.mainBlackColor,
                  size: 26, tetx: null,
                ),
                const AppIcon(
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove)
              ],
            ),
          ),
          Container(
            height: 120,
            padding:
                const EdgeInsets.only(top: 5, bottom: 10, left: 20, right: 20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20 * 2),
                    topRight: Radius.circular(20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Icon(
                        Icons.favorite,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.mainColor),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white, tetx: null,
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
