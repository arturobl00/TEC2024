import 'package:flutter/material.dart';

void main() {
  runApp(const Pantalla());
}

class Pantalla extends StatelessWidget {
  const Pantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("I'm Rich"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mi Primer APP Flutter"),
              Image(image: AssetImage('assets/bitcoin.png'),)
            ],
          )
          ),
      ),
    );
  }
}
