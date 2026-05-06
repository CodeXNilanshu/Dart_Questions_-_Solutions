sealed class Vehicle {}

class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

String getVehicleSound(Vehicle vehicle) {
  return switch (vehicle) {
    Car() => 'vroom',
    Truck() => 'vrooom',
    Bicycle() => 'No vrom',
  };
}
