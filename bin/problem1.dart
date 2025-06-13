class Animal{
  void talk(){
    print("i am talking");
  }
}
class Bird extends Animal{
  void fly(){
    print("I am flying");
  }
  void run(){
    print("I am running");
  }
}

void main(){
  var output = new Bird();
  output.talk();
  output.fly();
  output.run();
}