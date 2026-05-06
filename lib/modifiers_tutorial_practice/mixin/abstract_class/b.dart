import 'a.dart';

//final myVehicle = Vehicle();

class Car extends Vehicle {
  @override
  void moveForward(int meters) {}
}

class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {}
}
