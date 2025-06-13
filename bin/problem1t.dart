// dutch national flag problem
import 'dart:collection';

void dnf(List<int> a) {
  int low = 0;
  int mid = 0;
  int high = a.length - 1;
  while (mid <= high) {
    if (a[mid] == 0) {
      int temp = a[low];
      a[low] = a[mid];
      a[mid] = temp;

      low++;
      mid++;
    } else if (a[mid] == 1) {
      mid++;
    } else {
      int temp = a[mid];
      a[mid] = a[high];
      a[high] = temp;

      high--;
    }
  }
}

void main() {
  List<int> nums = [2, 0, 2, 1, 1, 0];
  print("Original List: $nums");

  dnf(nums);

  print("Sorted List:   $nums");
}
