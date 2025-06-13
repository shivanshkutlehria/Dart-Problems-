//If a given number is prime number
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

void main() {
  print(checkPrime(97));
}
