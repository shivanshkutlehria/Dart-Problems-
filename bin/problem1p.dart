// target value sum in lists
List<String> sumSublists(List<int> a, int target) {
  List<String> matchingValues = [];
  Map<String, int> map = {};
  for (int st = 0; st < a.length; st++) {
    for (int end = st; end < a.length; end++) {
      List<int> sublist = a.sublist(st, end + 1);

      int sum = sublist.reduce(
        (value, element) => value + element,
      );

      String key = sublist.toString();

      map[key] = sum;
    }
  }
  map.forEach((key, value) {
    if (value == target) {
      matchingValues.add(key);
    }
  });
  return matchingValues;
}

void main() {
  int target = 5;
  List<int> a = [1, 2, 3, 9, -4, 5];
  print(sumSublists(a, target));
}
