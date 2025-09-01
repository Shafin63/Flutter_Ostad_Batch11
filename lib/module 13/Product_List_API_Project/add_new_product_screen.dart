import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  bool addProductInProgress = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _productNameTEC = TextEditingController();
  final TextEditingController _productCodeTEC = TextEditingController();
  final TextEditingController _unitPriceTEC = TextEditingController();
  final TextEditingController _quantityTEC = TextEditingController();
  final TextEditingController _urlTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add New Product")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return "Don't leave it empty!";
                    }
                    return null;
                  },
                  controller: _productNameTEC,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Product Name",
                    labelText: "Product Name",
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return "Don't leave it empty!";
                    }
                    return null;
                  },
                  controller: _productCodeTEC,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Product Code",
                    labelText: "Product Code",
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return "Don't leave it empty!";
                    }
                    return null;
                  },
                  controller: _unitPriceTEC,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Unit Price",
                    labelText: "Unit Price",
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return "Don't leave it empty!";
                    }
                    return null;
                  },
                  controller: _quantityTEC,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Quantity",
                    labelText: "Quantity",
                  ),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value?.trim().isEmpty ?? true) {
                      return "Don't leave it empty!";
                    }
                    return null;
                  },
                  controller: _urlTEC,
                  keyboardType: TextInputType.url,
                  decoration: InputDecoration(
                    hintText: "Image URL",
                    labelText: "Image URL",
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: Visibility(
                    visible: addProductInProgress == false,
                    replacement: Center(child: CircularProgressIndicator()),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        _onTapAddProductScreen();
                      },
                      child: Text(
                        "Add Product",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onTapAddProductScreen() async {
    if (_formKey.currentState!.validate() == false) {
      return;
    }
    addProductInProgress = true;
    setState(() {});
    int totalPrice =
        int.parse(_quantityTEC.text) * int.parse(_unitPriceTEC.text);
    // prepare uri to request
    Uri uri = Uri.parse("http://35.73.30.144:2008/api/v1/CreateProduct");
    // prepare data
    Map<String, dynamic> requestBody = {
      "ProductName": _productNameTEC.text,
      "ProductCode": int.parse(_productCodeTEC.text),
      "Img": _urlTEC.text,
      "Qty": int.parse(_quantityTEC.text),
      "UnitPrice": int.parse(_unitPriceTEC.text),
      "TotalPrice": totalPrice,
    };
    // request with data
    Response response = await post(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(requestBody),
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      final decodedJson = jsonDecode(response.body);
      if (decodedJson['status'] == 'success') {
        _clearTextFields();
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Product Added Successfully")));
      } else {
        String errorMessage = decodedJson["data"];
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(errorMessage)));
      }
    }

    addProductInProgress = false;
    setState(() {});
  }

  void _clearTextFields() {
    _productNameTEC.clear();
    _productCodeTEC.clear();
    _unitPriceTEC.clear();
    _quantityTEC.clear();
    _urlTEC.clear();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _productNameTEC.dispose();
    _productCodeTEC.dispose();
    _unitPriceTEC.dispose();
    _quantityTEC.dispose();
    _urlTEC.dispose();
  }
}
