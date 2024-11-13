import 'dart:io';

void main() {
  // print("Enter your name:");
  // var name = stdin.readLineSync();
  // print("youre name is $name");

  // change string to int
  print("enter num:");
  var num = stdin.readLineSync()!;
  var y = int.parse(num);
  print("the result is ${y + 10}");
}
