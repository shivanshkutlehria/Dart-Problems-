dynamic calculate(num a, num b, String operator) {
  a = a ?? 0;
  b = b ?? 0;
  
  switch (operator) {
    case "+":
      return a + b;
    case "-":
      return a - b;
    case "*":
      return a * b;
    case "/":
      if (b == 0) {
        return "Error: Division by zero";
      }
      return a / b;
    default:
      return "Invalid operator";
  }
}

void main() {
  print(calculate(10, 2, "+"));
  print(calculate(10, 2, "-"));
  print(calculate(10, 2, "*"));
  print(calculate(10, 2, "/"));
}

