//intersection of lists with frequencies preserved
void intersection(List<int> a, List<int> b) {
  Map<int, int> frq1 = {};
  Map<int, int> frq2 = {};
  for (var num in a) {
    frq1[num] = (frq1[num] ?? 0) + 1;
  }
  for (var num in b) {
    frq2[num] = (frq2[num] ?? 0) + 1;
  }
  for (var entry in frq1.entries) {
    if (frq2.containsKey(entry.key)) {
      int common =
          entry.value < frq2[entry.key]! ? entry.value : frq2[entry.key]!;

      for (int i = 0; i < common; i++) {
        print(entry.key);
      }
    }
  }
}

void main() {
  List<int> a = [1, 2, 3, 4, 4];
  List<int> b = [2, 1, 4, 5, 4];
  intersection(a, b);
}
