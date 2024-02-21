import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: Column(
          children: [
            TextButton(
              onPressed: () {
                player.play(UrlSource('assets/note1.wav'));
              }, 
              child: Text("Sonido"))
          ],
        )),
      ),
    );
  }
}