import 'package:flutter/material.dart';
import 'package:ibmcalculator/result.dart';
import 'package:ibmcalculator/reusable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Variables para el cambio de color
  Color habilitado = Colors.red;
  Color deshabilitado = const Color.fromARGB(255, 61, 60, 60);
  int maleState = 0;
  int femaleState = 0;
  Color maleColorState = const Color.fromARGB(255, 61, 60, 60);
  Color femaleColorState = const Color.fromARGB(255, 61, 60, 60);

  //Variables para el peso, edad y altura
  int peso = 0;
  int edad = 0;
  double altura = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(children: [
            GestureDetector(
              onTap: (){
                maleState == 0 ? setState(() {
                    maleState = 1;
                    femaleState = 0;
                    maleColorState = habilitado;
                    femaleColorState = deshabilitado;
                  }) : setState(() {
                    maleState = 0;
                    maleColorState = deshabilitado;
                  });
              },
              child: ReusableCard(
                micolor: maleColorState,
                CardChiel: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.male, size: 100.0,),
                    ),
                    Text("MALE")
                  ],
                ),
                ),
            ),
            GestureDetector(
              onTap: (){
                femaleState == 0 ? setState(() {
                    femaleState = 1;
                    maleState = 0;
                    femaleColorState = habilitado;
                    maleColorState = deshabilitado;
                  }) : setState(() {
                    femaleState = 0;
                    femaleColorState = deshabilitado;
                  });
              },
              child: ReusableCard(
                micolor: femaleColorState,
              CardChiel: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.female, size: 100.0,),
                    ),
                    Text("FEMALE")
                  ],
                ),
              ),
            ),
          ],)),
          Expanded(child: ReusableCard(
            micolor: Color.fromARGB(255, 61, 60, 60),
            CardChiel: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("HEIGHT"),
                  Text("${altura}cm", style: const TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),),
                  Slider(
                    value: altura,
                    activeColor: Colors.red,
                    max: 250,
                    divisions: 250,
                    label: altura.round().toString(),
                    onChanged: (double value) {
                    setState(() {
                      altura = value;
                    });
        },
      ),
                ],
              ),
            )
          ),
          Expanded(child: 
          Row(children: 
            [
              ReusableCard(
                micolor: Color.fromARGB(255, 61, 60, 60),
                CardChiel: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("WIDTH", style: TextStyle(fontSize: 25.0),),
                    Text(peso.toString(), style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
                    [
                      ElevatedButton( 
                      onPressed: () {
                        //Peso -
                        if(peso > 0){
                          setState(() {
                            peso--;
                          });
                        }
                      },
                      child: Icon(Icons.remove, color: Colors.white), // icon of the button
                      style: ElevatedButton.styleFrom( // styling the button
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.red, // Button color
                        foregroundColor: Colors.white, // Splash color
                      ),
                    ),
                    ElevatedButton( 
                      onPressed: () {
                        //Peso +
                        setState(() {
                          peso++;
                        });
                      },
                      child: Icon(Icons.add, color: Colors.white), // icon of the button
                      style: ElevatedButton.styleFrom( // styling the button
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.red, // Button color
                        foregroundColor: Colors.white, // Splash color
                      ),
                    ),
                  ],
                  )
                ],
              ),
            ),
            ReusableCard(
                micolor: Color.fromARGB(255, 61, 60, 60),
                CardChiel: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("AGE", style: TextStyle(fontSize: 25.0),),
                    Text(edad.toString(), style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
                    [
                      ElevatedButton( 
                      onPressed: () {
                        //print("Edad -");
                        if(edad>0){
                          setState(() {
                            edad--;
                          });
                        }
                      },
                      child: Icon(Icons.remove, color: Colors.white), // icon of the button
                      style: ElevatedButton.styleFrom( // styling the button
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.red, // Button color
                        foregroundColor: Colors.white, // Splash color
                      ),
                    ),
                    ElevatedButton( 
                      onPressed: () {
                        //print("Edad +");
                          setState(() {
                            edad++;
                          });
                      },
                      child: Icon(Icons.add, color: Colors.white), // icon of the button
                      style: ElevatedButton.styleFrom( // styling the button
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.red, // Button color
                        foregroundColor: Colors.white, // Splash color
                      ),
                    ),
                  ],
                  )
                ],
              ),
            ),
          ],
            )),
          Container(decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: EdgeInsets.all(10.0),
          child: TextButton(
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage();
                  },
                ),
              );
            }, 
            child: Text("CALCULATE"))
          )
        ],
      )
    );
  }
}

