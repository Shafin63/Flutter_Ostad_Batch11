/*1. Student Performance System
Create a program that accepts a student's name and 5 subject marks from user input.
Then calculate the average, assign a grade based on rules (A, B, C, F),
and store the result in a Map. Display all students with grade 'A'.*/

import 'dart:io';
main ()
{
  Map <String, Map <String, dynamic>> studentRecord = {}; //map inside a map
  print("Enter the number of students: ");
  int studentCount = int.tryParse(stdin.readLineSync()!) ?? 0;
  if (studentCount <= 0) return; //return means exit the function

  for (int i =1; i <= studentCount; i++) {
    print("Enter the name of Student$i: ");
    String name = stdin.readLineSync()!; // ! means non-nullable
    List <int> marks = [];
    for (int j=1; j<=5; j++) {
      print("Enter the marks in Subject$j: ");
      int subMark = int.parse(stdin.readLineSync()!);
      marks.add(subMark);
    }
    double average = marks.reduce((a,b) => a+b)/marks.length;

    String grade;
    if (average >= 80){
      grade = "A";
    }
    else if (average >=70){
      grade = "B";
    }
    else if (average >=60){
      grade = "C";
    }
    else{
      grade = "F";
    }
    //store all the results in map
    studentRecord [name] = {
      "marks": marks,
      "average": average,
      "grade": grade
    };
  } //for loop

  // Display all students who got grade 'A'
  print('\n📋 Students with Grade A:');
  studentRecord.forEach((name, data) {
    if (data["grade"] == "A"){
      print("$name | Marks: ${data["marks"]} | average: ${data["average"]}");
    }
  }
  
  );


} //main