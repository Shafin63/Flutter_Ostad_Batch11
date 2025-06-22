class Father {
  String name;
  String land =  "100 acres";
  String house = "Tin-shed";

  Father(this.name) {
    print("$name father object created which is a constructor");
  }
  incomeSource(){
    print("Farming");
  }
} //  Father class

//inheritance of parent class is a child class
class son extends Father {
  String sonName, fatherName;
  //constructor of child class
  son(this.sonName, this.fatherName) : super (fatherName); //it will execute the constructor of parent class

  String land = "200 acres";
  @override //when I need to change something in  parent class, I need to use override
  incomeSource() {
    // return super.incomeSource(); //super = parent class
    print("I am an App Developer");
  }

  anyMethod(){
    print("this is a method inside child class");
  }
}

main()
{
  son Rifat = son("Rifat", "Rahim Mia"); //obj created of child class
  print(Rifat.land);
  print(Rifat.fatherName);
  Rifat.incomeSource();

  Father RahimMia = Father("name");
  print("${RahimMia.land}");
} //main


/*
void main2()
{
  MacBook mackbookpro17 = MacBook("Apple", 1450, "MacBook Pro 17");
  mackbookpro17.displayInfo();
}

class Laptop {
  String brand;
  double price;

  //constructor of parent class
  Laptop(this.brand, this.price) {
    print("Laptop constructor called from parent class"); //but it is called via child class object
  }

  void displayInfo (){
    print("Brand: $brand | Price: $price");
  }
}
class MacBook extends Laptop {
  String model;
  //constructor of child class
  MacBook (String brand, double price, this.model) : super(brand, price);
  void displayInfo (){
    super.displayInfo();
    print("Model: $model");
  }
}
*/
