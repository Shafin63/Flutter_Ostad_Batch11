class OstadStudent {

  void joinClass(){

  }

  void joinExam(){

  }

  void assignmentSubmit(){

  }

} //parent class

//using implements requires to override all methods in parent class
class person implements OstadStudent {

  @override
  void assignmentSubmit() {
    print("user submitted the assignment");
  }

  @override
  void joinClass() {
    print("user joined using mobile");
  }

  @override
  void joinExam() {
    print("user attended the exam");
  }
}// child class

class BusinessMan extends OstadStudent {

  late String name;
  BusinessMan(this.name);

  @override
  void joinExam() {
    print("$name Just join exam, no class");
  }

  
}


main ()
{
  person Rahim = person();
  Rahim.joinClass();

  BusinessMan ElonMusk = BusinessMan("Elon Musk");
  ElonMusk.joinExam();

  // polymorphism
  // student but also can be person or businessman or anything, this is polymorphism
  OstadStudent Shafin1 = person();
  OstadStudent Shafin2 = BusinessMan('Shafin2');

  Shafin1.joinExam();
  Shafin2.joinExam();

  print(Shafin1.runtimeType);
  print(Shafin2.runtimeType);
}

