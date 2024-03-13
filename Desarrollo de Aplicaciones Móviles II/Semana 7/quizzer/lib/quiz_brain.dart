import 'package:quizzer/questions.dart';


class QuizBrain{

  int _optionNumber = 0;
  
  final List<Question> _questionBank = [
    Question(q: '¿IOS es mejor que Android?', a: false),
    Question(q: '¿Las Aplicaciones Hibridas son mejor que las Nativas?', a: true),
    Question(q: '¿La programación sin Frameworks es mejor?', a: false),
    Question(q: '¿Windows 11 es mejor que Windows 10?', a: true),
    Question(q: 'Linux es mejor que IOS', a: true),
    Question(q: '¿2 + 2 son 4?', a: true),
    Question(q: 'Los datos y los parametros son lo mismo', a: false),
    Question(q: 'El estandar 802.11 se refiere a ethernet', a: false),
    Question(q: '¿México tiene 40 estados?', a: false),
    Question(q: 'Puebla esta al oriente del país', a: true),
    Question(q: 'Ajalpan significa Agua sobre Arena', a: true),
    Question(q: '¿El Itssna oferta 4 Carreras?', a: true),
    Question(q: '¿México celebra su independencia en 1910?', a: false),
  ];

  void nextQuestion(){
    if(_optionNumber < _questionBank.length - 1){
      _optionNumber++;
    }
  }

  String getQuestionTest(){
    return _questionBank[_optionNumber].questionTest;
  }

  bool getCorrectAnswer(){
    return _questionBank[_optionNumber].questionAnswer;
  }
}