import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:food_delivary_app/Home/food_page_body.dart';
import 'package:food_delivary_app/conroller/popular_product_controller.dart';
import 'package:food_delivary_app/routes/route_helper.dart';
import 'Home/main_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PopularPoductController>().getPopularProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages:RouteHelper.routes,
    );
  }
}
