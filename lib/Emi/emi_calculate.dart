import 'dart:math';

import 'package:flutter/material.dart';

class Emi extends StatefulWidget {
  const Emi({Key? key}) : super(key: key);

  @override
  State<Emi> createState() => _EmiState();
}

class _EmiState extends State<Emi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                transform: GradientRotation(pi / 2),
                colors: [
                  Colors.pinkAccent,
                  Colors.pink.shade300,
                  Colors.red,
                  Colors.deepOrangeAccent
                ],
              ),
            ),
            child: Center(
              child: Text(
                "Check Your EMI",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          //Icon
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Icon(Icons.close, size: 30, color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 430,
              height: 650,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black12,
    );
  }
}
