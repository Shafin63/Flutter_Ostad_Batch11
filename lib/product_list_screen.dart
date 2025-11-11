import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_with_provider/cart_list_screen.dart';
import 'package:state_management_with_provider/product.dart';
import 'package:state_management_with_provider/product_list_provider.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        actions: [
          Consumer<ProductListProvider>(
            builder: (context, provider, _) {
              return Badge(
                label: Text(provider.cartItemCount.toString()),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartListScreen()),
                    );
                  },
                  icon: Icon(Icons.shopping_cart),
                ),
              );
            },
          ),
        ],
      ),
      body: Consumer<ProductListProvider>(
        builder: (context, productListProvider, _) {
          return GridView.builder(
            itemCount: productListProvider.productList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              final Product product = productListProvider.productList[index];
              final bool alreadyInCart = context
                  .read<ProductListProvider>()
                  .isAlreadyInCart(product.id);
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.network(product.imageUrl, height: 75),
                        Text(product.name),
                        Text("${product.price}"),
                        FilledButton(
                          onPressed: () {
                            if (alreadyInCart) {
                              context
                                  .read<ProductListProvider>()
                                  .removeFromCart(product.id);
                            } else {
                              context.read<ProductListProvider>().addToCart(
                                product,
                              );
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              Colors.green[600],
                            ),
                          ),
                          child: Text(alreadyInCart ? "Remove" : "Add to Cart"),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
