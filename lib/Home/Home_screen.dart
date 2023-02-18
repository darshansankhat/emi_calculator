import 'dart:math';

import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  double amount = 500000;
  TextEditingController txtamount=TextEditingController(text: "500000");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //gradient
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
          //Center Box
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 290,right: 20),
                    child: TextField(
                      controller: txtamount,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.currency_rupee,size: 20),
                      ),
                    ),
                  ),
                  Slider(
                    value: amount,
                    max: 5000000,
                    min: 100000,
                    onChanged: (value) {
                      setState(
                        () {
                          amount = value;
                          txtamount = TextEditingController(text: "${amount.toInt()}");
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          "®1 lac",
                          style: TextStyle(fontSize: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 290),
                          child: Text(
                            "®50 lac",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Calculate
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 220,
              height: 60,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(80),
              ),
              alignment: Alignment.center,
              child: Text(
                "CALCULATE  EMI",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black12,
    );
  }
}
