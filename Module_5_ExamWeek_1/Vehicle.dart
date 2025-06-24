abstract class Vehicle {
  int _speed =0;

  move(); // abstract method

  // setter method to use _speed
  set setSpeed (int speed) { //non-abstract method
    _speed = speed;
  }

  // public getter
  int get speed => _speed;

} //Vehicle class
