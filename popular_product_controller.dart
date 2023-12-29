import 'package:food_delivary_app/conroller/cart_controller.dart';
import 'package:food_delivary_app/data/repositry/popular_product_repo.dart';
import 'package:food_delivary_app/models/products_model.dart';
import 'package:food_delivary_app/utils/colors.dart';
import 'package:get/get.dart';

class PopularPoductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularPoductController({required this.popularProductRepo});
  List<dynamic> _popularproductList = [];
  // ignore: non_constant_identifier_names
  List<dynamic> get PopularProductList => _popularproductList;
  late CartController _cart;

  bool _iSLoaded = false;
  bool get iSLoaded => _iSLoaded;

  int _quantity = 0;
  int get quntity => _quantity;
  // ignore: prefer_final_fields
  int _inCartItem = 0;
  int get inCartItems => _inCartItem + _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      //print("got Product");
      _popularproductList = [];
      _popularproductList.addAll(Product.fromJson(response.body).Products);
      _iSLoaded = true;

      // print(_popularproductList);
      update();
    } else {}
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = _quantity - 1;
    }
    update();
  }

  int checkQuantity(int quantity) {
    if (quantity < 0) {
      Get.snackbar("Item count", "you can't reduce more !",
          backgroundColor: AppColors.mainColor);
      return 0;
    } else if (quantity > 20) {
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(CartController cart  ) {
    _quantity = 0;
    _inCartItem = 0;
    _cart = cart;
    var exist = false;
    //exist = _cart.existInCart(product);
  }

  void addItem(ProductsModel product) {
    if (quntity > 0) {
      _cart.addItem(product, _quantity);
      _quantity = 0;
      _cart.items.forEach((key, value) {});
    } else {
      Get.snackbar(
        "Item count",
        "You can't reduce more !",
        backgroundColor: AppColors.mainColor,
      );
    }
  }
}
