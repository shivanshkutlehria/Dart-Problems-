class Stack<T> {
  List<T> _stack = [];

  void push(T val) {
    _stack.add(val);
  }

  T? pop() {
    if (isEmpty) {
      throw StateError("Cannot pop from an empty stack.");
    }
    return _stack.removeLast();
  }

  T? peek() {
    return _stack.isNotEmpty ? _stack.last : null;
  }

  bool get isEmpty => _stack.isEmpty;
}

void main() {
  final stack = Stack<int>();

  stack.push(10);
  stack.push(20);
  print(stack.peek());
  print(stack.pop());
  print(stack.isEmpty);
  print(stack.pop());
  print(stack.isEmpty);

  try {
    stack.pop();
  } catch (e) {
    print(e);     
  }
}

