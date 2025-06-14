// Q: Given a list of dynamic nested lists (e.g., [1, [2, [3, 4], 5]]), write a Dart
//function to flatten the list into a single-level list.
//Output should be: [1, 2, 3, 4, 5].

List<dynamic> flattenList(List<dynamic> inputList) {
  List<dynamic> result = [];
  void helper(List<dynamic> a) {
    for (var item in a) {
      if (item is List) {
        helper(item);
      } else {
        result.add(item);
      }
    }
  }

  helper(inputList);
  return result;
}

void main() {
  List<dynamic> nestedList = [
    1,
    [
      2,
      [3, 4],
      5
    ]
  ];
  List<dynamic> flatList = flattenList(nestedList);
  print(flatList);
}
