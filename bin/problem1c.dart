int NonRepeating(String string) {
  Map<String, int> charCount = {};
  for (var char in string.split('')) {
    charCount[char] = (charCount[char] ?? 0) + 1;
  }
  for (int i = 0; i < string.length; i++) {
    if (charCount[string[i]] == 1) {
      return i;
    }
  }
  return -1;
}

void main() {
  String string = 'shivansh';
  print('${NonRepeating(string)}');
}
