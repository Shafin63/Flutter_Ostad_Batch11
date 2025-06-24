import 'Vehicle.dart';

class Car extends Vehicle {

    move() {

        print("The car is moving at $speed km/h");
    }
}

main ()
{
    Car BMW = Car();
    BMW.setSpeed = 300;
    BMW.move();
}