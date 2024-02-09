import 'package:flutter/material.dart';

void main() {
  runApp( const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      body:SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Text("Hola jasdjadsj daj dasj dasj asd"),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.red,
              child: Text("Hola"),
            ),
            Container(
              width: 50,
              padding: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: Text("Hola"),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.indigo,
              child: Text("Hola"),
            ),
          ],
        ),
      ),
    ),
  );
  }
}
