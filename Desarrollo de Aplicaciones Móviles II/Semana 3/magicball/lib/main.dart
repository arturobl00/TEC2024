import 'package:flutter/material.dart';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 2, 57, 160),
          title: Text("Pregunta lo que quieras", style: TextStyle(
            color: Colors.white
          ),),
        ),
        body: Center(
          child: Image(image: AssetImage('ball1.png'),)
        ),
        ),
    );
  }
}