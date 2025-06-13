//Write a Dart function to reverse a list of integers in-place without using
//additional space. Handle edge cases like empty lists or lists with a single element
void ReverseIn(List<int> num) {
  if (num.length <= 1) {
    return;
  }

  int left = 0;
  int right = num.length - 1;
  while (left < right) {
    int temp;
    temp = num[left];
    num[left] = num[right];
    num[right] = temp;

    left++;
    right--;
  }
}

void main() {
  List<int> num = [1, 2, 3, 4, 5];
  ReverseIn(num);
  print('Reversed list is : $num');
}
