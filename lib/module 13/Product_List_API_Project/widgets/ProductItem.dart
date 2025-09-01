import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter1/module%2013/Product_List_API_Project/models/product.dart';
import 'package:http/http.dart';
import '../product_list_screen.dart';
import '../update_new_product_screen.dart';
import '../utilities/urls.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key, required this.product, required this.refreshProductList});

  final Product product;
  final VoidCallback refreshProductList;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool deleteInProgress = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network(widget.product.image, errorBuilder: (_,__,___) {
          return Icon(Icons.error_outlined);
        },),
      ),
      title: Text(widget.product.name),
      trailing: Visibility(
        visible: deleteInProgress == false,
        replacement: CircularProgressIndicator(),
        child: PopupMenuButton<productOptions>(
          onSelected: (productOptions selectedOption) {
            if (selectedOption == productOptions.delete) {
              _deleteProduct();
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpdateProductScreen(product: widget.product,)),
              );
            }
          },
          itemBuilder: (context) {
            return [
              PopupMenuItem(value: productOptions.delete, child: Text("Delete")),
              PopupMenuItem(value: productOptions.update, child: Text("Update")),
            ];
          },
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Code: ${widget.product.code}"),
          Row(
            children: [
              Text("Unit Price: ${widget.product.unitPrice}"),
              SizedBox(width: 10),
              Text("Quantity: ${widget.product.quantity}"),
            ],
          ),
        ],
      ),
    );
  }

  Future <void> _deleteProduct() async {
    deleteInProgress = true;
    setState(() {});
    Uri uri = Uri.parse(Urls.deleteProductUrl(widget.product.id));
    Response response = await get(uri);
    debugPrint(response.statusCode.toString());
    debugPrint(response.body);

    if (response.statusCode == 200) {
      widget.refreshProductList;
    }
    deleteInProgress = false;
    setState(() {});
  }
}
