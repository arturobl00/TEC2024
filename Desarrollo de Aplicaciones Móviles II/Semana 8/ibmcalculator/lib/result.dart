import 'package:flutter/material.dart';
class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
            child: const Text("Your Result", style: TextStyle(
              color: Colors.white, 
              fontSize: 40.0, 
              fontWeight: FontWeight.bold
            ),),
          ),
          Expanded(
            child: Container(
              width: 400.0,
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 61, 60, 60),
                borderRadius: BorderRadius.circular(20.0) 
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:60.0, bottom: 20.0),
                    child: 
                    Text("NORMAL", style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),),
                  ),
                   Text("19.56", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold, 
                    fontSize: 90.0,               
                   ),
      
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 80.0),
                    child: Text('You have a normal body weignt. Good job!', style: TextStyle(
                      color: Colors.white,
                      
                      fontSize: 22.0,
                    ),),
                  )
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text("Regresar")
            )
        ],
      ),
    );
  }
}