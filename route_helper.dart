import 'package:food_delivary_app/Home/main_food_page.dart';
import 'package:food_delivary_app/screens/food/popular_food_detail.dart';
import 'package:food_delivary_app/screens/food/recomanded_food_details.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  // ignore: constant_identifier_names
  static const String RecommendedFood = "/reommended-food";

  // ignore: unnecessary_string_interpolations
  static String getInitial() => '$initial';
  // ignore: unnecessary_string_interpolations
  static String getPopularFood() => '$popularFood';
  static String getrecommendedFood() => '$RecommendedFood';

  static List<GetPage> routes = [
    GetPage(
      name: "/",
      page: () => MainFoodPage(),
    ),
     GetPage(
        name: "/popularfood",
        page: () {
          return PopularFoodDetails();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: "/recommendedfood",
        page: () {
          return RecommendedFoodDetail();
        },
        transition: Transition.fadeIn),
  ];
}
