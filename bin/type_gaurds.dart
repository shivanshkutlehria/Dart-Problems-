void main() {
  List<dynamic> values = [1, "Hello", 3.14, true];
  for (var value in values) {
    if (value is int) {
      print("Integer: $value");
    } else if (value is String) {
      print("String: ${value.toUpperCase()}");
    } else if (value is double) {
      print("Double: $value");
    } else if (value is bool) {
      print("Boolean: $value");
    } else {
      print("Unknown type");
    }
  }
}
