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
                    setState(() {
                    bool answer = quizBrain.getCorrectAnswer();
                    if(answer == true){
                      print("Correcto");
                    }else{
                      print("Error");
                    }
                    myListIcon.add(Icon(Icons.check, color: Colors.green,));
                    quizBrain.nextQuestion();
                  });
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
                    setState(() {
                    bool answer = quizBrain.getCorrectAnswer();
                    if(answer == false){
                      print("Correcto");
                    }else{
                      print("Error");
                    }
                    myListIcon.add(Icon(Icons.close, color: Colors.red,));
                    quizBrain.nextQuestion();
                  });
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