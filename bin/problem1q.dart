// binary search on sorted list
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

int binarySearch(List<int> b, int? target) {
  int low = 0;
  int high = b.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (target == b[mid]) {
      return mid ;
    } else if (target! < mid) {
      high = mid - 1;
    } else {
      low = mid - 1;
    }
  }
  return -1;
}

void main() {
  List<int> a = [1, 2, 3, 4, 5, 6, 7];
  print(binarySearch(a, 9));
}
