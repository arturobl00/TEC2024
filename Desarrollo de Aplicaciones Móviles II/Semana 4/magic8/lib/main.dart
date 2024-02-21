import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Dicee());
}

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int diceleft = 1;
  int diceright = 6;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("DICEE", 
          style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: (){
                  setState(() {
                    diceleft = Random().nextInt(6)+1;
                  });
                },
                child: Image(image: AssetImage('images/dice$diceleft.png'), width: 180.0,)
              ),
              TextButton(
                onPressed: (){
                  setState(() {
                    diceright = Random().nextInt(6)+1;
                  });
                },
                child: Image(image: AssetImage('images/dice$diceright.png'), width: 180.0,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}