import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rng = Random();

  while (true) {
    stdout.write("Rock, paper or scissors? (r/p/s) ");

    final input = stdin.readLineSync();

    if (input == "r" || input == "p" || input == "s") {
      var playerMove;
      if (input == "r") {
        playerMove = Move.rock.name;
      } else if (input == "p") {
        playerMove = Move.paper.name;
      } else if (input == "s") {
        playerMove = Move.scissors.name;
      }

      final random = rng.nextInt(3);
      final aiMove = Move.values[random].name;

      print("You played: $playerMove");
      print("AI played: $aiMove");

      if (playerMove == aiMove) {
        print("It's a draw");
      } else if (playerMove == "rock" && aiMove == "scissors" ||
          playerMove == "paper" && aiMove == "rock" ||
          playerMove == "scissors" && aiMove == "paper") {
        print("You win!");
      } else {
        print("You lose.");
      }
    } else if (input == "q") {
      break;
    } else {
      print("Invalid Input");
    }
  }
}
