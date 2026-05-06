mixin Jumping {
  void jump() {
    print('Jumping...');
  }
}

mixin Running {
  void run() {
    print('Running...');
  }
}

class Vehicle {}

class Class1 extends Vehicle {}

class Class2 implements Vehicle {}
