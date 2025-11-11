import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:state_management_with_provider/product.dart';

class ProductListProvider extends ChangeNotifier {
  final List<Product> _productList = [
    Product(
      id: 1,
      name: 'iPhone 17',
      price: 120000,
      imageUrl:
          'https://mobilexchangebd.com/storage/products/iphone-17-sage445.jpeg',
    ),
    Product(
      id: 2,
      name: 'iPhone 17 Mini',
      price: 100000,
      imageUrl:
          'https://mobilexchangebd.com/storage/products/iphone-17-sage445.jpeg',
    ),
    Product(
      id: 3,
      name: 'iPhone 17 Nano',
      price: 90000,
      imageUrl:
          'https://mobilexchangebd.com/storage/products/iphone-17-sage445.jpeg',
    ),

    Product(
      id: 4,
      name: 'iPhone 17 Pro',
      price: 150000,
      imageUrl:
          'https://mobilexchangebd.com/storage/products/iphone-17-sage445.jpeg',
    ),
    Product(
      id: 5,
      name: 'iPhone 17 Pro Max',
      price: 170000,
      imageUrl:
          'https://mobilexchangebd.com/storage/products/iphone-17-sage445.jpeg',
    ),
  ];
  final List<Product> _cartProductList = [];

  List<Product> get productList => _productList;
  List<Product> get cartProductsList => _cartProductList;

  int get cartItemCount => _cartProductList.length;

  void addToCart(Product p) {
    for (Product product in _cartProductList) {
      if (product.id == p.id) {
        return;
      }
    }
    _cartProductList.add(p);
    notifyListeners();
  }

  void removeFromCart(int id) {
    _cartProductList.removeWhere((e) => e.id == id);
    notifyListeners();
  }

  bool isAlreadyInCart(int id) {
    return _cartProductList.where((e) => e.id == id).isNotEmpty;
  }
}
