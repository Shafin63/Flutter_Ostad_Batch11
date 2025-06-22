import "class_3_mobile features.dart";

class studentInfo { //This is a class named studentInfo
  String ? studentName;
  int ? age;
  String ? studentAddress;

  StudentExam () //method which is inside a class and is similar to function
  {
    print("This is inside class, $studentName");
    print("Exam on 5th November!");
  }
}

main()
{
  studentInfo student1 = studentInfo(); //Object created, cannot access class without object
  // var student1 = studentInfo(); //another way of creating object
  student1.studentName = "Shafin"; //accessing class elements through object-student1
  student1.age = 25;
  student1.studentAddress = "Cox's Bazar";
  print("Student Name: ${student1.studentName}");
  print("Student Age: ${student1.age}");
  print("Student Address: ${student1.studentAddress}");

  student1.StudentExam(); // calling method from inside a class, cannot call directly without object
  Mobile.phoneClass(); //accessing static method from another file (imported)
  print(Mobile.name);
}






