class Mobile
{
  String ? brandName;
  String ? modelName;
  int ? releaseYear;

  static String name = "Amar mobile";

  Mobile(this.brandName, this.modelName) //It is Constructor, where the method name and class name is same
  {
    print("Constructor created for the class Mobile"); //it will run at the very beginning
    print("parameters accessed like: ${modelName}"); //it will run at the very beginning
  }

  //methods in a Mobile
  charging()
  {
    print("$modelName is charging!");
  }

  unlock()
  {
    print("$modelName is unlocked!");
  }

  static phoneClass() //this is a static method, accessible from to any file
  {
    print("this is a static method");
  }


} //class


main ()
{
  Mobile iPhone = new Mobile("Samsung", "S25 Ultra"); //object iPhone created
  // iPhone.brandName =  "Apple";
  // iPhone.modelName = "Iphone 16";
  iPhone.releaseYear = 2025;

  print("Brand is: ${iPhone.brandName}");
  iPhone.charging();
  iPhone.unlock();
  Mobile.phoneClass(); //when static we can access method inside a class without the help of object

} //main