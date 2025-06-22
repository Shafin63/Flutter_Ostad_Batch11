import 'dart:io';

main ()
{
  print("Enter your day: ");
  String ? day = stdin.readLineSync();
  switch(day)
      {
    case "friday" :
      print("I'll take rest");
      break;
    case "saturday":
      print("Varsity jabo");
      break;
    case "Monday":
      print("Tuition e thakbo");
    case "Wednesday":
      print("basai thakbo");
    case "Thursday":
      print("Exam e thakbo");
    default:
      print("ghumabo");
  }
}