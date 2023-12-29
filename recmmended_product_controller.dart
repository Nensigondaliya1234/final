import 'package:food_delivary_app/data/repositry/popular_product_repo.dart';
import 'package:food_delivary_app/models/products_model.dart';
import 'package:get/get.dart';

import '../data/repositry/recommanded_product_repo.dart';

class RecommendedPoductController extends GetxController {
  final RecommendedProductRepo recommendedPoductRepo;
  RecommendedPoductController({required this.recommendedPoductRepo});
  List<dynamic> _recommendedproductList = [];
  // ignore: non_constant_identifier_names
  List<dynamic> get recommendedproductList => _recommendedproductList;

  get isLoaded => true;

  Future<void> getRecmmendedProductList() async {
    Response response = await RecommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print("got Products recommended");
      _recommendedproductList = [];
      _recommendedproductList.addAll(Product.fromJson(response.body).Products);
     // print(_popularproductList);
      update();
    } else {
            print("could not got Products recommended");

    }
  }
}
