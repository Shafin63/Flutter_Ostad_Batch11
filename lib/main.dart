import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_with_provider/product_list_provider.dart';
import 'package:state_management_with_provider/product_list_screen.dart';

void main() {
  runApp(ProductListApp());
}

class ProductListApp extends StatelessWidget {
  const ProductListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductListProvider(),)
      ],
      child: MaterialApp(
        home: ProductListScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
