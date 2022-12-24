// ignore_for_file: avoid_print

import 'dart:math';

enum GuessResult{
  correct, tooHigh, tooLow
}
class Game{
  final int answer;
  int _totalGuesses = 0;
  List<int> myList = [];

  Game(int maxRandom) : answer = Random().nextInt(maxRandom) +1{
    print('Answer is an $answer');
    var len = myList.length;
    for (var i=0;i<myList.length;i++) {

      print(myList[i]);
    }
  }
  GuessResult doGuess(int guess) {

    _totalGuesses++;

    if (guess == answer) {

      myList.add(myList.length);
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }


  }

  int get totalGuesses{
    return _totalGuesses;
  }
}