//function with return type double
double calculateArea (double length, double width)
{
  double area = length*width;
  return area;
}

//function with return type void
sayHello ()
{
  print("Hello Dart!");
}

//return type void
void greetUser (String name)
{
  print("Hello $name");
}


int add (int num1, int num2)
{
  int sum = num1 + num2;
  // return num1+num2;
  return sum;
}

//function using arrow Syntax | Single Expression
int addition (int num1, int num2) => num1 +num2;

//parameters with predefined value
showInfo (String name, {int age = 25})
{
  print("Name: $name, Age: $age");
}

calculateAreaWithPrm (double length, double width, [String ? des])
{
  double area = length*width;
  if (des != null)
    {
      print("Area of $des = $area");
    }
  else
    {
      print("Only Area = $area");
    }
}

main ()
{
  print("Area of first:${calculateArea(50, 24)}  sqm");
  print("Area of second:${calculateArea(10, 24)} sqm");
  sayHello();
  greetUser("Shafin");

  print("Additon is: ${add(45, 45)}");
  print("Addition is: ${addition(33, 33)}");
  showInfo("Shafin");

  calculateAreaWithPrm(25, 15);
  calculateAreaWithPrm(25, 15, "Dhaka");
}
