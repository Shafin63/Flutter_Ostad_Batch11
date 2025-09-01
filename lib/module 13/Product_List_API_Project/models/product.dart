// "_id": "68b2c6f2dd287e3f18a271cd",
// "ProductName": "Soyabin Oil",
// "ProductCode": 3434334,
// "Img": "soyabin",
// "Qty": 100,
// "UnitPrice": 90,
// "TotalPrice": 9000

class Product {
  late String id;
  late String name;
  late int code;
  late String image;
  late int quantity;
  late int unitPrice;
  late int totalPrice;

  Product.fromJson(Map<String, dynamic> productJson) {
    id = productJson["_id"];
    name = productJson["ProductName"];
    code = productJson["ProductCode"];
    image = productJson["Img"];
    quantity = productJson["Qty"];
    unitPrice = productJson["UnitPrice"];
    totalPrice = productJson["TotalPrice"];
  }
}
