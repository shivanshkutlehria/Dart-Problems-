class Vehicle {
  void describe() {
    print("This is a vehicle.");
  }
}

class Car extends Vehicle {
  @override
  void describe() {
    print("This is a car.");
    super.describe();
  }
}

void main() {
  Car car = Car();
  car.describe();
}
