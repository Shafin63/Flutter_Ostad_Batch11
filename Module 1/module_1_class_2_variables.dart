main()
{
  String name = "Shafin";
  int age = 25;
  bool isbekar = true;
  double pi = 3.1416;

  print("Name: " + name);
  print("Your name is: $name. " + "\nYour age is: $age.");
  print("Am I bekar? \nAns is: $isbekar");
  print("what is the value of pi? \nAns is: $pi");

  ///var vs dynamic
  var test = "I am a string";
  // test = 25; // It's wrong bcz var does not take data types dynamically. When declared var for test I used string. So, I'll have to continue using string.
  test = "I am modified string!";
  print(test);

  dynamic type1 = "String";
  type1 = 25; //here even if it was string at first, but I changed it to int without declaring the type
  print(type1);

  //final vs cons: final at runtime and const at compile time
  const massE = 1.67;
  print(massE);
  // massE = 555; // constant variables cannot be changed
  final CurrentTime = DateTime.now();
  print(CurrentTime);
}
