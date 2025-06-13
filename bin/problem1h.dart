// Rotate a list by k positions to the right
List<T> RotateList<T>(List<T> a, int k) {
  int n = a.length;
  if (k > n) {
    k = n % k;
  }
  return a.sublist(n - k)..addAll(a.sublist(0, n - k));
}

void main() {
  List<int> a = [1, 2, 3, 4, 5, 6];
  print(RotateList(a, 4));
}
