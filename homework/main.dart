/* this homework is about building a game where the user has to guess a number chosen by the programme below
the user has 3 chance to guess the right number and each time the prgramme will give a hint to help the user to guess the number*/

import 'dart:io';
import 'dart:math';

choose() {
  print(
      "welcome to the guessing numbers game!\n [1] Start the game \n [2] Game instructions\n [3] Exit ");
  try {
    var a = stdin.readLineSync()!;
    var b = int.parse(a);

    switch (b) {
      case 1:
        try {
          start();
        } catch (a) {
          print("enter only nubers");
          start();
        }
        break;
      case 2:
        instructions();
        break;
      case 3:
        leave();
        break;
      default:
        print("try again");
        choose();
    }
  } catch (z) {
    print("try again");
    choose();
  }
}

start() {
  var h = new Random().nextInt(10);

  for (var i = 0; i < 3; i++) {
    print("choose a number please");
    var c = stdin.readLineSync()!;
    var d = int.parse(c);
    if (d == h) {
      print("congratulation!!\n you found the right number!");
      choose();
    } else if (h < d) {
      if (i == 2) continue;
      print("you are wrong but close,try a smaller number");
    } else if (h > d) {
      if (i == 2) continue;
      print("you are wrong but close,try a bigger number");
    }
  }

  playagain();
}

instructions() {
  print(
      '''welcome to instructions \nFor this game\nyou’ll try to guess the correct number between 0 and 10.\nYou have only three attempts!\nfor Each incorrect guess you will get a hint to help you get closer to the correct number
If the you guessed the number correctly within the allowed attempts, you win !!! 
If all attempts are used without guessing correctly, you will lose.''');

  choose();
}

leave() {
  print("Are you sure ? | answer with yes/no");
  var k = stdin.readLineSync();
  if (k == "yes") {
    print("goodbye");
    exit(0);
  } else if (k == "no") {
    print("welcome back!");
    choose();
  } else {
    print("try again");
    leave();
  }
}

playagain() {
  print("you lost . . .!");
  print("you want to play again? |answer with yes/no");
  var w = stdin.readLineSync();
  if (w == "yes") {
    choose();
  } else if (w == "no") {
    leave();
  } else {
    print("try again");
    leave();
  }
}

void main() {
  choose();
}
