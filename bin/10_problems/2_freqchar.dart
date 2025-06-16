Map<String, int> freqchar(String s) {
  Map<String, int> result = {};
  s = s.replaceAll(" ", '');
  for (var char in s.split('')) {
    result[char] = (result[char] ?? 0) + 1;
  }
  return result;
}

void main() {
  print(freqchar("lemons are not melons"));
}
