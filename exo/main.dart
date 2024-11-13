import 'dart:io';
// FIRST EXO : write a programme that can calculate your age
void main() {

    print("enter your year of birth");

    var yob = stdin.readLineSync()!;
    
    var k = int.parse(yob);

    var age = DateTime.now().year - k;

    print("your age is $age");
   
}
