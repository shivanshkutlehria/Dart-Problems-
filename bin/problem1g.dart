// Kadane's algorithm (Maximum subarray sum) Most efficient for subarray sum
// does not work for negative answers with only one element in list.
// need to use different for loop and need to work on indexes for that.
import 'dart:math';

int MaximumSubArray(List<int> a) {
  int CS = 0;
  int MaxSum = 0;
  for (var int in a) {
    CS += int;
    MaxSum = max(CS, MaxSum);
    if (CS < 0) {
      CS = 0;
    }
  }
  return MaxSum;
}

void main() {
  List<int> a = [1, 2, -3, 4, -1, -6, 8];
  print(MaximumSubArray(a));
}
