// import 'a.dart';

part of 'a.dart';

final myVehicle = Vehicle();

final class Car extends Vehicle {
  int passengers = 4;
}

final class MockVehicle implements Vehicle {
  @override
  void moveForward(int meter) {}
}
