import 'dart:io';
import 'dart:math';

enum move {
  rock,
  paper,
  scissors,
}

void main() {
  final rng = Random();
  while (true) {
    stdout.write('choose your value r,p,s: ');
    stdout.write('enter q to quit ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var userInput;
      if (input == 'r') {
        userInput = move.rock;
      } else if (input == 'p') {
        userInput = move.paper;
      } else {
        userInput == move.scissors;
      }

      final random = rng.nextInt(3);
      final aiMove = move.values[random];
      if (userInput == aiMove) {
        print('draw');
      } else if (userInput == move.paper && aiMove == move.rock ||
          userInput == move.scissors && aiMove == move.paper ||
          userInput == move.rock && aiMove == move.scissors) {
        print('you win');
      } else {
        print('you lost');
      }

      print(input);
    } else if (input == 'q') {
      break;
    } else {
      print('invalid input');
    }
  }
}
