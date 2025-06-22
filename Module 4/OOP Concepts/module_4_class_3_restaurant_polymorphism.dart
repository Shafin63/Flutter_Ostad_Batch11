abstract class restaurantService {
  String resName ="";
  takeOrder(resName);
  serveFood(resName);
  takeBill(resName);
}

class KFC implements restaurantService{
  @override
  serveFood(KFC) {
    print("$resName served food");
  }

  @override
  takeBill(KFC) {
    print("$resName took bill");
  }

  @override
  takeOrder(KFC) {
    print("$resName took order");
  }

  @override
  String resName = "KFC";

}

class PizzaHut implements restaurantService {
  @override
  String resName = "Pizza Hut";

  @override
  serveFood(PizzaHut) {
    print("$resName served food");
  }

  @override
  takeBill(PizzaHut) {
    print("$resName took bill");
  }

  @override
  takeOrder(PizzaHut) {
    print("$resName took order");
  }

}


main ()
  {
  KFC kfc = KFC();
  print("Restaurant Name is: ${kfc.resName}");
  kfc.takeOrder(KFC);
  kfc.serveFood(KFC);
  kfc.takeBill(KFC);

  print("=======================");

  PizzaHut pizzaHut = PizzaHut();
  print("Restaurant Name is: ${pizzaHut.resName}");
  pizzaHut.takeOrder(PizzaHut);
  pizzaHut.serveFood(PizzaHut);
  pizzaHut.takeBill(PizzaHut);
  }
