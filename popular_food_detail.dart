// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:food_delivary_app/Home/main_food_page.dart';
import 'package:food_delivary_app/conroller/cart_controller.dart';
import 'package:food_delivary_app/conroller/popular_product_controller.dart';
import 'package:food_delivary_app/data/repositry/popular_product_repo.dart';
import 'package:food_delivary_app/models/products_model.dart';
import 'package:food_delivary_app/screens/food/recomanded_food_details.dart';
import 'package:food_delivary_app/widgets/app_icon.dart';
import 'package:food_delivary_app/widgets/column.dart';
import 'package:food_delivary_app/widgets/expendable_text.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../widgets/big_tetx.dart';

class PopularFoodDetails extends StatelessWidget {
  //int pageId;
  PopularFoodDetails({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   //  var Product =
      //  Get.find<PopularPoductController>().PopularProductList[pageId];
    //print("page Id" + pageId.toString());
    //  print("product name is" + Product.name.toString());
  //  Get.find<PopularPoductController>().initProduct(Get.find<CartController>());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("lib/assets/undhiyu1.jpeg"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => MainFoodPage());
                    },
                    child: AppIcon(icon: Icons.arrow_back_ios)),
                GestureDetector(
                    child: AppIcon(icon: Icons.shopping_cart_outlined))
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 330 - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: "Undhiyu",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BigText(
                    text: "Introduce",
                    tetx: null,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          child: ExpendableTextWidgetState(
                              text:
                                  "'Undhiyu is a Gujarati mixed vegetable dish that is a regional specialty of Surat, Gujarat, India. The name of this dish comes from the Gujarati word undhu, which translates to upside down, since the dish is traditionally cooked upside down underground in earthen pots, termed matlu, which are fired from above. "))),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          GetBuilder<PopularPoductController>(builder: (PopularProduct) {
        return Container(
          height: 120,
          padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
          decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20 * 2),
                  topRight: Radius.circular(20 * 2))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        PopularProduct.setQuantity(false);
                      },
                      child: Icon(
                        Icons.remove,
                        color: AppColors.signColor,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    BigText(
                      text: PopularProduct.quntity.toString(),
                      tetx: null,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        PopularProduct.setQuantity(true);
                      },
                      child: Icon(
                        Icons.add,
                        color: AppColors.signColor,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
                child:
                 GestureDetector(
                  onTap: (){
                   Get.to(() => RecommendedFoodDetail());

                  },
                   child: BigText(
                    text: "\$add to cart",
                    color: Colors.white,
                    tetx: null,
                                 ),
                    ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.mainColor),
              )
            ],
          ),
        );
      }),
    );
  }
}
