/*abstract */class Animal { ////if I use abstract, I cannot directly create object
  String name;
  Animal(this.name);

  eat(){
    print("$name is eating");
  }

  makeSound(){
    print("$name is making sound");
  }
} // parent class

// abstract class Dog extends Animal{ //if I use this, I cannot directly create object
  class Dog extends Animal{
  String color, name;
  Dog(this.color, this.name) : super(name);

} // child class

main ()
{
  Animal x = Animal("testing abstract"); //Abstract classes can't be instantiated

  Dog AfricanDog = Dog("brown", "Dog");
  print(AfricanDog.name);
  print(AfricanDog.color);
  AfricanDog.makeSound();

}