import 'Question.dart';

class QuizBrain {
  var _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'I  write clean code in Dart', a: true),
    Question(q: 'I am Amazing and Gorgeous', a: true),
    Question(q: 'My thoughts and imaginations are awesome', a: true),
    Question(q: 'you can\'t be a flutter dev', a: false),
    Question(q: 'you can be me', a: false),
    Question(q: 'you are different', a: true),
    Question(q: 'you are amazing too', a: true),
    Question(q: 'your thoughts are good', a: true),
    Question(q: 'your imagination is fantastic', a: true),
    Question(q: 'you can\'t pull through', a: false),
    Question(q: 'you write good code', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questions;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answers;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
