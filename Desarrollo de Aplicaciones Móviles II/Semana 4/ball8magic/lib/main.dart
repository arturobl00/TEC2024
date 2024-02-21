import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Magic8());
}

class Magic8 extends StatefulWidget {
  const Magic8({super.key});

  @override
  State<Magic8> createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 59, 106),
          title: const Text("Ask Me AnyThing", style: TextStyle(color: Colors.white),),
        ),
      body: Center(
        child: 
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: TextButton(
            onPressed: (){
              setState(() {
                ball = Random().nextInt(5)+1;
              });
            },
            child:  Image(image: AssetImage('images/ball$ball.png'))),
        ),
      ),
      ),
    );
  }
}