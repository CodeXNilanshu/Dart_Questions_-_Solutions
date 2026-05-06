import 'a.dart';

final myVehicle = Vehicle();

// class car extends Vehicle {
//   int passengers = 4;
// }

class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {}
}
