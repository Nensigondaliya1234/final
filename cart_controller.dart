import 'package:flutter/cupertino.dart';
import 'package:food_delivary_app/data/repositry/cart_repo.dart';
import 'package:food_delivary_app/models/products_model.dart';
import 'package:get/get.dart';

import '../models/cart_model.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => {};

  void addItem(ProductsModel product, int quantity) {
    if (_items.containsKey(product.id!)) {
      _items.update(product.id!, (value) {
        return CartModel(
          id: value.id,
          name: value.name,
          price: value.price,
          img: value.img,
          quantity: value.quantity!+quantity,
          isExit: true,
          time: DateTime.now().toString(),
        );
      });
    } else {
      _items.putIfAbsent(product.id!, () {
        return CartModel(
          id: product.id,
          name: product.name,
          price: product.price,
          img: product.img,
          quantity: quantity,
          isExit: true,
          time: DateTime.now().toString(),
        );
      });
    }
  }
}
