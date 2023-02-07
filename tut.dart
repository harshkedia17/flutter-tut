void main() {
  // for (var i = 0; i < 5; i++) {
  //   print('hello ${i + 1} ');
  // }
  addnNumbers(5, 2);
  print('Hello World');
  var p1 = Person();
  print(p1.age);
  // String a = 'harsh';
}

int addnNumbers(int num1, int num2) {
  // print(num1 + num2);
  return num1 + num2;
}

// class
class Person {
  String name = 'Harsh';
  int age = 19;
}
