/*2. Unique Product Inventory
Build an inventory system where users can input product names (Strings)
and their quantities. Ensure no duplicate product names using appropriate collection types.
Show all products with quantity greater than 10.*/

import 'dart:io';

main()
{
  Map<String, int> productInfo ={};
  print("Enter how many products you want to add in inventory: ");
  int inputCount = int.tryParse(stdin.readLineSync()!) ?? 0;
  if(inputCount <= 0) return;

  String productName;
  int productQuantity;
  for (int i=0; i<inputCount; i++) {
    print("Enter Product Name: ");
    productName = stdin.readLineSync()!;

    // Check for duplicates
    if (productInfo.containsKey(productName)) {
      print("⚠️ Product '$productName' already added! Skipping...");
      continue; // skip this product
    }
    print("Enter Product Quantity: ");
    productQuantity = int.tryParse(stdin.readLineSync()!) ?? 0;

    // Add to the map
    productInfo[productName] = productQuantity;

    print("✅ Added: $productName - $productQuantity");
  } // for loop

  print(productInfo);

  //all products with quantity over 10
  print("all products with quantity over 10: ");
  productInfo.forEach((name, quantity) {
    if (quantity > 10) {
      print("$name - $quantity");
    }
  });

} //main