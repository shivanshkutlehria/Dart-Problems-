// If two strings are Anagrams of each other(Case Sensitive)

bool areAnagrams(String str1, String str2) {
  str1 = str1.replaceAll(" ", ""); //just add .lowercase for non - case sensitive output
  str2 = str2.replaceAll(" ", ""); //just add .lowercase for non - case sensitive output

  if (str1.length != str2.length) return false;

  Map<String, int> countFreq(String s) {
    Map<String, int> freq = {};
    for (var char in s.split("")) {
      freq[char] = (freq[char] ?? 0) + 1;
    }
    return freq;
  }

  Map<String, int> map1 = countFreq(str1);
  Map<String, int> map2 = countFreq(str2);

  if (map1.length != map2.length) return false;

  for (var key in map1.keys) {
    if (map1[key] != map2[key]) return false;
  }
  return true;
}
void main() {
  print(areAnagrams("Listen", "Silent"));
  print(areAnagrams("hello", "helloo"));
  print(areAnagrams("Dirty room", "Dormitory"));
}