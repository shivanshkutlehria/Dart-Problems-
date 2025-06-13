void sortList(List<int> a) {
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
  print("Sorted list is : $a");
}

void removeDuplicates(List<int> a) {
  int index = 0;
  for (int i = 0; i < a.length - 1; i++) {
    if (a[i] != a[i + 1]) {
      a[index] = a[i];
      index++;
    }
  }
  a[index] = a[a.length - 1];
  a.length = index + 1;
  print(a);
}

void main() {
  List<int> a = [1, 2, 3, 4, 5, 3, 2, 9, 9];
  sortList(a);
  removeDuplicates(a);
}
