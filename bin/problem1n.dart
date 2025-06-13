String reverseStringmanual(String string) {
  List<String> a = [];
  String currentWord = '';
  for (int i = 0; i < string.length; i++) {
    if (string[i] != " ") {
      currentWord += string[i];
    } else {
      if (currentWord.isNotEmpty) {
        a.add(currentWord);
        currentWord = '';
      }
    }
  }
  if (currentWord.isNotEmpty) {
    a.add(currentWord);
    currentWord = '';
  }
  String result = '';
  for (int j = a.length - 1; j >= 0; j--) {
    result += a[j];
    if (j != 0) result += " ";
  }
  return result;
}

void main() {
  String string = "We are here now";
  print(reverseStringmanual(string));
}
