import 'package:flutter/material.dart';
import 'package:quizzer/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(const Quizzer());
}

class Quizzer extends StatefulWidget {
  const Quizzer({super.key});

  @override
  State<Quizzer> createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
  List<Icon> myListIcon = [];

  void checkAnswer(bool userPickedAnswer){
    bool answer = quizBrain.getCorrectAnswer();
    if(userPickedAnswer == answer){
     myListIcon.add(const Icon(Icons.check, color: Colors.green,));
    }else{
     myListIcon.add(const Icon(Icons.close, color: Colors.red,));
    }
    setState(() {
      quizBrain.nextQuestion();
    });
  }
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Text(quizBrain.getQuestionTest(),
              style: const TextStyle(color: Colors.white, fontSize: 30.0),
              textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 180.0,
              ),
              TextButton(
                onPressed: (){
                    checkAnswer(true);
                }, 
                child: Container(
                  width: 350.0,
                  height: 100.0,
                  color: Colors.green,
                  child: const Center(
                    child: Text("True", style: TextStyle(color: Colors.white, fontSize: 30.0),),
                  )
                  )
                ),
                TextButton(
                onPressed: (){
                    checkAnswer(false);
                }, 
                child: Container(
                  width: 350.0,
                  height: 100.0,
                  color: Colors.red,
                  child: const Center(
                    child: Text("False", style: TextStyle(color: Colors.white, fontSize: 30.0),))
                  )
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: myListIcon,
                ),
            ],
          ),
        ),
      ),
    );
  }
}