import 'dart:io';

main ()
{
//   String name;
//   print(name); // Cannot use non-nullable variable
// String ? Vs String 
/* "String" is a non-nullable type, it can't be null.
  " String ?" is a nullable type, it can be null*/

  String ? name2;
  print("Enter your name:");
  name2 = stdin.readLineSync(); //taking user input

  print("Enter Your Age: ");
  int ? age = int.tryParse(stdin.readLineSync()!); // by using tryParse converting it into integer
  print("Your name is: $name2"); //! is used to say that it cannot be null
  print("Your age is: $age");
}
