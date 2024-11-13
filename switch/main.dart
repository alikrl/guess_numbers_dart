import 'dart:io';
void main(){
  print("give me your number");

  var k=stdin.readLineSync()!;
  var n= int.parse(k);

  switch(n){
    
    case 1:
        print("nanak bshtk l3am");
        break;
    case 2:
        print("9awed roh fawet ratrapage");
        break;
    case 3:
        print("9awed 3awed l3am");
        break;    
    default:
        print("ydk fih yacine ");   
  }
}