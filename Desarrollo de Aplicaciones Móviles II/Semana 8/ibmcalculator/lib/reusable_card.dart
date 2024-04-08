import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  ReusableCard({super.key, required this.micolor, required this.CardChiel});

  Color micolor;
  Widget CardChiel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: micolor,
      ),
      margin: EdgeInsets.all(10.0),
      height: 180.0,
      width: 185.0,
      child: CardChiel,
      );
  }
}