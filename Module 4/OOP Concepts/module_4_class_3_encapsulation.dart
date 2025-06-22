import 'module_4_class_3_restaurant.dart';

main (){


  Restaurant BFC = Restaurant();
  BFC.order("Chicken Fry");
  // BFC._shoppingItem("Chicken Fry");
  // BFC.itemPrepare("Chicken Fry");

  ////GOVT er lok////
  //accessing the private variable: getter method
  print(BFC.RestaurantID);
  // modifying private variable: setter method
  BFC.setID = 6569;
  print(BFC.RestaurantID);

}