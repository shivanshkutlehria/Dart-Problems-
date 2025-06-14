// sliding window maximum

List<int> slidingWindow(List<int> a, int k) {
  if (a.isEmpty || k == 0) return [];

  List<int> result = [];
  List<int> deque = [];
  int n = a.length;
  for (int i = 0; i < n; i++) {
    if (deque.isNotEmpty && deque.first <= i - k) {
      deque.removeAt(0);
    }
    while (deque.isNotEmpty && a[deque.last] < a[i]) {
      deque.removeLast();
    }
    deque.add(i);

    if (i >= k - 1) {
      result.add(a[deque.first]);
    }
  }
  return result;
}
void main(){
  print(slidingWindow([1,3,-1,-3,5,3,6,7], 3));
}