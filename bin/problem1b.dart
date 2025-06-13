bool Ispalindrome(String string) {
  int left = 0;
  int right = string.length - 1;

  while (left < right) {
    while (left < right && string[left] == ' ') {
      left++;
    }
    while (left < right && string[right] == ' ') {
      right--;
    }
    while (left < right &&
        string[left].toLowerCase() != string[right].toLowerCase()) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

void main() {
  String string = "No lemon no Melon";
  Ispalindrome(string);
  print("$string is palindrome? ${Ispalindrome(string)}");
}
