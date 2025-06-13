import 'dart:math';

abstract class AdvancedArithmetic {
  void divisorsum(int n);
  String impl() {
    return 'I implemented AdvancedArithmatic';
  }
}

class Mycalculator extends AdvancedArithmetic {
  @override
  void divisorsum(int n) {
    List<int> divisors = [];
    for (int i = 1; i <= sqrt(n); i++) {
      if (n % i == 0) {
        divisors.add(i);
        if (i != n / i) {
          divisors.add(n ~/ i);
        }
      }
    }
    print('Divisors are : ${divisors}');
    int sum = 0;
    for (int divisor in divisors) {
      sum += divisor;
    }
    print('Sum of divisors is : ${sum}');
  }

  String impl(){
    return 'I implemented AdvancedArithmatic';
  }
}

void main() {
  Mycalculator cal = Mycalculator();
  cal.divisorsum(6);
  print(cal.impl());
}
