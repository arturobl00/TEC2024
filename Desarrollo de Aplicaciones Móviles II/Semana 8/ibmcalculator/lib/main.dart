import 'package:flutter/material.dart';
import 'package:ibmcalculator/input_page.dart';

void main() {
  runApp(const BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const InputPage(),
    );
  }
}

