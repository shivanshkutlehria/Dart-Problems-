// Group Anagrams

List<List<String>> groupAnagrams(List<String> words) {
  Map<String, List<String>> result = {};

  for (String word in words) {
    String key = (word.split('')..sort()).join();
    result.putIfAbsent(key, () => []);
    result[key]!.add(word);
  }
  return result.values.toList();
}

void main(){
  List<String> input = ["eat","tea","tan","ate","nat","bat"];
  print(groupAnagrams(input));
}
