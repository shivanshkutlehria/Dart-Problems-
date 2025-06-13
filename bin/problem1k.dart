class Queue {
  List<int> stack1 = [];
  List<int> stack2 = [];

  bool isEmpty() {
    return stack1.isEmpty && stack2.isEmpty;
  }

  void enqueue(int element) {
    stack1.add(element);
  }

  int? dequeue() {
    if (isEmpty()) {
      print("Queue is Empty");
      return null;
    }
    if (stack2.isEmpty) {
      while (stack1.isNotEmpty) {
        stack2.add(stack1.removeLast());
      }
    }
    return stack2.removeLast();
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(3);
  queue.enqueue(6);
  print(queue.dequeue());
}
