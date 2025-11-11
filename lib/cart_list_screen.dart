import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_with_provider/product.dart';
import 'package:state_management_with_provider/product_list_provider.dart';

class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products In Cart")),
      body: Consumer<ProductListProvider>(
        builder: (context, productListProvider, child) {
          return ListView.builder(
            itemCount: productListProvider.cartProductsList.length,
            itemBuilder: (context, index) {
              final Product product =
                  productListProvider.cartProductsList[index];
              return ListTile(
                title: Text(product.name),
                trailing: IconButton(
                  onPressed: () {
                    productListProvider.removeFromCart(product.id);
                  },
                  icon: Icon(Icons.delete),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
