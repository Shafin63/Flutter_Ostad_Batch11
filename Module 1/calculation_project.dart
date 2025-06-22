import 'dart:io';

main ()
{
  print("Enter the 1st Number: ");
  double ? number1 = double.parse(stdin.readLineSync()!);
  print("Enter the 2nd Number: ");
  double ? number2 = double.parse(stdin.readLineSync()!);
  double sum = number1 + number2;
  print("The addition is: $sum");
}