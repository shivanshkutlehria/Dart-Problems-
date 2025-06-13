class _Arithmatic {
  int add(int a, int b) {
    return a + b;
  }
}

class _Adder extends _Arithmatic {
  String superr() {
    return "My superclass is : Arithmatic";
  }
}

void main() {
  var output = new _Adder();
  print(output.superr());
  print(output.add(10, 20));
}
