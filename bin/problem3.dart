abstract class Book {
  String title = " ";
  void setTitle(String s);
  String getTitle() {
    return title;
  }
}

class Mybook extends Book {
  @override
  void setTitle(String s) {
    title = s;
  }

  String getTitle() {
    return title;
  }
}

void main() {
  String newTitle = "The Tale of two cities";
  var output = Mybook();
  output.setTitle(newTitle);
  print('The title is  : ${output.getTitle()}');
}
