// ignore_for_file: prefer_final_fields, sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_delivary_app/conroller/popular_product_controller.dart';
import 'package:food_delivary_app/data/repositry/popular_product_repo.dart';
import 'package:food_delivary_app/data/repositry/recommanded_product_repo.dart';
import 'package:food_delivary_app/models/products_model.dart';
import 'package:food_delivary_app/routes/route_helper.dart';
import 'package:food_delivary_app/screens/food/popular_food_detail.dart';
import 'package:food_delivary_app/utils/app_consts.dart';
import 'package:food_delivary_app/utils/colors.dart';
import 'package:food_delivary_app/widgets/big_tetx.dart';
import 'package:food_delivary_app/widgets/column.dart';
import 'package:food_delivary_app/widgets/icon_and_tetx_weiged.dart';
import 'package:food_delivary_app/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import '../conroller/recmmended_product_controller.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  // ignore: override_on_non_overriding_member
  void dispos() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // ignore: non_constant_identifier_names

      Container(
        height: 320,

        child: GestureDetector(
          onTap: () {
            Get.to(() => PopularFoodDetails());
          },
        ),
      ),

      // ignore: non_constant_identifier_names
      GetBuilder<PopularPoductController>(builder: (PopularProducts) {
        return DotsIndicator(
          dotsCount: 6,
          position: _currPageValue,
          decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.8),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        );
      }),
      // popular tex
      SizedBox(
        height: 30,
      ),
     
      Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(left: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BigText(
              text: "Popular",
              tetx: null,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 3),
              child: BigText(
                text: "",
                color: Colors.black26,
                tetx: null,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 0.2),
              child: SmallText(
                text: "Food Pairing",
              ),
            )
          ],
        ),
      ),
      Container(
          height: 900,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Row(children: [
                          Container(
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("/lib/images/dal.jpeg"),
                                )),
                            child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(children: [])),
                          ),
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 140,
                                  margin: EdgeInsets.only(
                                      left: 40, right: 40, bottom: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0xffe8e8e8),
                                          blurRadius: 5.0,
                                          offset: Offset(0, 5)),
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-5, 0)),
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(10, 0)),
                                    ],
                                  ),
                                  child: Container(
                                      margin:
                                          EdgeInsets.only(left: 30, right: 10),
                                      padding: EdgeInsets.only(
                                          top: 15, left: 15, right: 15),
                                      child: AppColumn(
                                        text: "Undhiyu",
                                      )),
                                ),
                              ),
                            ],
                          )
                        ])));
              })),
    ]);
  }
}

Widget _buildPageItem(int index, ProductsModel PopularProduct) {
  Matrix4 matrix = Matrix4.identity();

  return Transform(
    transform: matrix,
    child: Stack(
      children: [
        GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.getPopularFood());
            },
            child: Container(
              height: 220,
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("lib/images/dal/jpeg"),
                ),
                
              ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
        
          child: Container( 
           height: 140,
            
              child: Container(
                height: 140,
                margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
               
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(10, 0)),
                  ],
                ),
                child: Container(
                    margin: EdgeInsets.only(left: 30, right: 10),
                    padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: AppColumn(
                      text: "ansn",
                    )),
              ),
            ),
          
        ),]
        ),
    
    );
  
}
