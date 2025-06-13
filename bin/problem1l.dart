int vowels(String string) {
  int count = 0;
  String a = string.toLowerCase();
  for (var char in a.split('')) {
    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      count++;
    }
  }
  return count;
}

void main() {
  String string = "aeiou";
  print(vowels(string));
}
