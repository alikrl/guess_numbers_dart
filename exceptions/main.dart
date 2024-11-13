import 'dart:io';
// YOU CAN ALWAYS USE TRY{} and CATCH() TO CHECK IF YOUR CODE HAVE ANY EROORS BEFOR EXECUTING IT
void main() {
  try {
    print("enter your year of birth");
    var yob = stdin.readLineSync()!;
    var k = int.parse(yob);

    var age = DateTime.now().year - k;

    print("your age is $age");
  } catch (e) {
    print("try again \nError:$e");
  }
}
