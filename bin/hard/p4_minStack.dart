// Implement a Min Stack

class Stack {
  List<int> _stack = [];
  List<int> _minstack = [];

  void push(int element) {
    _stack.add(element);
    if (_minstack.isEmpty || element <= _minstack.last) {
      _minstack.add(element);
    } else {
      _minstack.add(_minstack.last);
    }
  }

  void pop() {
    if (_stack.isNotEmpty) {
      _minstack.removeLast();
      _stack.removeLast();
    }
  }

  int? top() {
    return _stack.isNotEmpty ? _stack.last : null;
  }

  int? getmin(){
    return _minstack.isNotEmpty ? _minstack.last : null;
  }
}
void main() {
  Stack stack1 = Stack();
  stack1.push(5);
  stack1.push(3);
  stack1.push(7);
  stack1.push(2);

  print(stack1.getmin()); 
  stack1.pop();
  print(stack1.getmin()); 
  print(stack1.top());    
}