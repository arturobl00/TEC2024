import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 116, 59, 222),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(left:18.0, right: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12), 
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Image(
                          height: 20,
                          width: 20,
                          color: Colors.white,
                          image: AssetImage("assets/menu1.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const Text("Mostly Sunny", style: TextStyle(color: Colors.white)),
                const Stack(
                  children: [
                    Text("23°", style: TextStyle(
                      fontSize: 200,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    Opacity(
                      opacity: 0.7,
                      child: Padding(
                        padding: EdgeInsets.only(left: 100.0, top: 120.0),
                        child: Image(
                          height: 150,
                          image: AssetImage('assets/sunny.png')),
                      ),
                    ),
                  ],
                ),
                const Text("Saturday, 10 Febrary | 10.00 AM", style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}