class Restaurant {
  int _id = 2050; //_ this will make it private variable

  //getter method: to access the private properties
  int get RestaurantID => _id;

  //setter method: to change or modify the private properties
  set setID (int value) {
    _id = value;
  }

  order(String item) {
    print ("$item ordered! ");
    _shoppingItem(item); //these private methods are only accessible in same class
    _itemPrepare(item);

  }

  _itemPrepare(String item) {  // when I use _ before method, it is encapsulated... Now, it becomes private
    print ("$item preparation going!");
  }

  _shoppingItem(String item) {
    print ("$item shopping ongoing!");
  }

}