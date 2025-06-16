List<int> evenList(List<int> a) {
  List<int> result = [];
  for (int ele in a) {
    if (ele % 2 == 0) {
      result.add(ele);
    }
  }
  int n = result.length;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (result[j] < result[j + 1]) {
        int temp = result[j + 1];
        result[j + 1] = result[j];
        result[j] = temp;
      }
    }
  }
  return result;
}

void main() {
  print(evenList([5, 7, 32, 6, 9, 10, 44]));
}
