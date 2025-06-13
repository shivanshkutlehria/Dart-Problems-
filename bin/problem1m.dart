// 2nd largest element in unsorted list
int? seclargest(List<int> a) {
  int max = a[0];
  int? second;
  for (int j = 1; j < a.length; j++) {
    if (a[j] > max && (second == null || a[j] > second)) {
      second = a[j];
    } else if (a[j] > max) {
      second = max;
      max = a[j];
    }
  }
  return second;
}

void main() {
  List<int> a = [3, 4, 65, 9, 2, 34];
  print(seclargest(a));
}
