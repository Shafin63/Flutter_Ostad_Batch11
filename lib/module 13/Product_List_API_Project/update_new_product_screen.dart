import 'package:flutter/material.dart';
import 'package:flutter1/module%2013/Product_List_API_Project/models/product.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key, required this.product});
  final Product product;

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _productNameTEC = TextEditingController();
  final TextEditingController _productCodeTEC = TextEditingController();
  final TextEditingController _unitPriceTEC = TextEditingController();
  final TextEditingController _quantityTEC = TextEditingController();
  final TextEditingController _urlTEC = TextEditingController();

  @override
  void initState() {
    super.initState();
    _productNameTEC.text = widget.product.name;
    _productCodeTEC.text = widget.product.code.toString();
    _unitPriceTEC.text = widget.product.unitPrice.toString();
    _quantityTEC.text = widget.product.quantity.toString();
    _urlTEC.text = widget.product.image;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Product"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: _productNameTEC,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Product Name",
                    labelText: "Product Name"
                  ),
                ),
                TextFormField(
                  controller: _productCodeTEC,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: "Product Code",
                      labelText: "Product Code"
                  ),
                ),
                TextFormField(
                  controller: _unitPriceTEC,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Unit Price",
                      labelText: "Unit Price"
                  ),
                ),
                TextFormField(
                  controller: _quantityTEC,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: "Quantity",
                      labelText: "Quantity"
                  ),
                ),
                TextFormField(
                  controller: _urlTEC,
                  decoration: InputDecoration(
                      hintText: "Image URL",
                      labelText: "Image URL"
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 40, width: 180,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: (){}, child: Text("Update Product", style: TextStyle(fontSize: 18),)),
                ),
        
              ],
            ),
          ),
        ),
      ),
    );
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
