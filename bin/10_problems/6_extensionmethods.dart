// created custom extensions for strings

extension StringExtensions on String {
  bool get isPalindrome {
    String cleaned = toLowerCase().replaceAll(RegExp(r'\s+'), '');
    return cleaned == cleaned.split('').reversed.join('');
  }

  String get toSnakeCase {
    return replaceAllMapped(
      RegExp(r'([a-z0-9])([A-Z])'),
      (match)=>'${match.group(1)}_${match.group(2)}'
    ).toLowerCase();
  }
}
void main(){
  String str1 = "RaceCar";
  print('Is "$str1" a palindrome? ${str1.isPalindrome}');

  String str2 = "thisIsCamelCase";
  print('"$str2" in snake_case is: ${str2.toSnakeCase}');
}
