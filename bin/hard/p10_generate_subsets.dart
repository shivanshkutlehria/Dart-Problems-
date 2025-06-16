List<List<int>> generatesubsets(List<int> a) {
  List<List<int>> result = [[]];

  for (int ele in a) {
    int size = result.length;
    for (int i = 0; i < size; i++) {
      List<int> newSubset = List.from(result[i])..add(ele);
      result.add(newSubset);
    }
  }
  return result;
}

void main() {
  List<int> input = [1, 2, 3];
  List<List<int>> subsets = generatesubsets(input);

  print("Power set of $input:");
  for (var subset in subsets) {
    print(subset);
  }
}
