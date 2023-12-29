import 'package:food_delivary_app/conroller/popular_product_controller.dart';
import 'package:food_delivary_app/data/api/api_client.dart';
import 'package:food_delivary_app/data/repositry/cart_repo.dart';
import 'package:food_delivary_app/data/repositry/popular_product_repo.dart';
import 'package:food_delivary_app/utils/app_consts.dart';
import 'package:get/get.dart';

import '../conroller/cart_controller.dart';
import '../conroller/recmmended_product_controller.dart';
import '../data/repositry/recommanded_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
//repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());

  //controllers
  Get.lazyPut(() => PopularPoductController(popularProductRepo: Get.find()));

  Get.lazyPut(
      () => RecommendedPoductController(recommendedPoductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo:Get.find()));

}
