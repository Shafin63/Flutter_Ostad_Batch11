late String data;
String data2 = "This is my post.";

void fetchData ()
{
  data = "Data from API";
}

main ()
{
  fetchData(); //at first calling this function
  print(data); //then taking the string from there which was assigned late
  print(data2);

  //null safety
  int age = 25;
  int ? age2; // ? means the value is nullable. If no value is assigned it will be null
  print(age);
  print(age2);

  String ? name;
  print("Welcome to Facebook, ${name ?? 'guest!'}"); //?? checks if it's null, if null shows default result

  age >= 18 ? print("Eligible to Vote!") : print("You must be 18 or above!");
  print(name?.length); // using ? to show null if the name is null, so len is also null

  //using late
  late String ? name2; //late used to assign a variable later
  // print(name2); //won't let us print until assigned, even null operator ? won't help




} //main function
