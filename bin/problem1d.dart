void sortlists(List<int> a, List<int> b) {
  a.addAll(b);
  int n = a.length;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (a[j] > a[j + 1]) {
        int temp = a[j + 1];
        a[j + 1] = a[j];
        a[j] = temp;
      }
    }
  }
}

void main() {
  List<int> a = [2, 4, 6, 8];
  List<int> b = [1, 3, 5, 7];
  sortlists(a, b);
  print("The sorted list is : $a");
}
