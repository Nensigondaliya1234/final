import 'package:food_delivary_app/data/api/api_client.dart';
import 'package:food_delivary_app/utils/app_consts.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }

  static getRecommendedProductList() {}
}
