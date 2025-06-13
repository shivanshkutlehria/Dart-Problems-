//validate a string parentheses using stack based approach
bool validation(String string) {
  Map<String, String> val = {')': '(', ']': '[', '}': '{'};
  List<String> stack = [];
  for (var char in string.split('')) {
    if (val.containsValue(char)) {
      stack.add(char);
    } else if (val.containsKey(char)) {
      if (stack.isEmpty || stack.removeLast() != val[char]) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}

void main() {
  String string1 = "{[()]}";
  String b = "(]";
  print(validation(string1));
  print(validation(b));
}
