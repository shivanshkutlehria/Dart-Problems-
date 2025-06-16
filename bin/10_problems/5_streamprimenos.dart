//can be done without artificial delay too , i added artificial delay of 1 seconds.

import 'dart:async';
import 'dart:math';

bool checkPrime(int n) {
  if (n <= 1) return false;
  if (n == 2 || n == 3) return true;
  if (n % 2 == 0) return false;

  int limit = sqrt(n).floor();
  for (int i = 3; i < limit; i += 2) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

Stream<int> primeNum(Stream<int> a) async* {
  await for (final num in a) {
    if (checkPrime(num)) {
      await Future.delayed(Duration(seconds: 1));
      yield num;
    }
  }
}

void main() async {
  Stream<int> numbers = Stream.fromIterable(List.generate(20, (i) => i + 1));
  Stream<int> primes = primeNum(numbers);

  await for (final prime in primes) {
    print("Prime : $prime");
  }
}
