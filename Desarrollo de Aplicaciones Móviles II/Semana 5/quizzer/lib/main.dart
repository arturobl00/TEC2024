import 'package:flutter/material.dart';

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
  List<String> myQuestion = [
    "¿IOS es mejor que Android?",
    "¿Las Aplicaciones Hibridas son mejor que las Nativas?",
    "¿La programación sin Frameworks es mejor?",
    "¿Windows 11 es mejor que Windows 10?",
    "Linux es mejor que IOS"
  ];
  int optionNumber = 0;
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
              Text(myQuestion[optionNumber],
              style: TextStyle(color: Colors.white, fontSize: 30.0),
              textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 180.0,
              ),
              TextButton(
                onPressed: (){
                  setState(() {
                    myListIcon.add(Icon(Icons.check, color: Colors.green,));
                    optionNumber++;
                  });
                }, 
                child: Container(
                  width: 350.0,
                  height: 100.0,
                  color: Colors.green,
                  child: const Center(
                    child: Text("True", style: TextStyle(color: Color.fromARGB(255, 232, 201, 201), fontSize: 30.0),),
                  )
                  )
                ),
                TextButton(
                onPressed: (){
                  setState(() {
                    myListIcon.add(Icon(Icons.close, color: Colors.red,));
                    optionNumber++;
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