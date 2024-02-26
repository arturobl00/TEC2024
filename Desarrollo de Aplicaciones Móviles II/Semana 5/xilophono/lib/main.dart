import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xilophone());
}

class Xilophone extends StatefulWidget {
  const Xilophone({super.key});

  @override
  State<Xilophone> createState() => _XilophoneState();
}

class _XilophoneState extends State<Xilophone> {
  final player = AudioPlayer();

  _Boton(Color color, int soundNumber) => Expanded(child: 
              TextButton(
                onPressed: (){
                  playsound(soundNumber);
                },
                child: Container(
                  color: color,
                ),
              ),
    );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _Boton(Colors.red, 1),
              _Boton(Colors.blue, 2),
              _Boton(Colors.yellow, 3),
              _Boton(Colors.green, 4),
              _Boton(Colors.black, 5),
              _Boton(Colors.orange, 6),
              _Boton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  Future <void> playsound(int soundNumber) async {
    String audioPath = "note$soundNumber.wav";
    await player.play(AssetSource(audioPath));
  }
}

