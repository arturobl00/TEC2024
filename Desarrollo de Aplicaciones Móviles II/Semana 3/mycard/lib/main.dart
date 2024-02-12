import 'package:flutter/material.dart';

void main() {
  runApp(const MyCard());
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyContent(),
    );
  }
}

class MyContent extends StatelessWidget {
  const MyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/perfil.jpg')
              ),
              const Text("Arturo Bustamante", style: TextStyle(
                fontFamily: 'Pacifico', fontSize: 40.0, color: Colors.white
              ),),
              const Text("FLUTTER DEVELOPER", style: TextStyle(
                fontSize: 30.0, color: Colors.white
              ),),
              const Divider(
                color: Colors.white,
                indent: 50.0,
                endIndent: 50.0,
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.only(left:40.0, top: 20.0, bottom: 20.0),
                child: const Row(
                  children: [
                    Icon(Icons.phone, color: Colors.teal,),
                    SizedBox(width: 40.0,),
                    Text("2381865345", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      color: Colors.teal),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.only(left:40.0, top: 20.0, bottom: 20.0),
                child: const Row(
                  children: [
                    Icon(Icons.mail, color: Colors.teal,),
                    SizedBox(width: 40.0,),
                    Text("arturobl00@msn.com", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      color: Colors.teal),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}