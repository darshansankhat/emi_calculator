import 'dart:math';

import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  double year = 1;
  double rat = 3;
  double amount = 500000;
  double Emi=0;
  double interest=0;
  double total = 0;
  TextEditingController txtamount = TextEditingController(text: "500000");
  TextEditingController txtyear = TextEditingController(text: "2");
  TextEditingController txtRat = TextEditingController(text: "3");

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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //One
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 70, right: 180),
                          child: Text(
                            "Amount",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                            width: 105,
                            height: 40,
                            color: Colors.white,
                            child: TextField(
                              controller: txtamount,
                              onChanged: (value) {
                                setState(() {
                                  amount = double.parse(value);
                                });
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.currency_rupee, size: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: amount,
                      max: 5000000,
                      min: 0,
                      activeColor: Colors.pink,
                      onChanged: (value) {
                        setState(
                          () {
                            amount = value;
                            txtamount =
                                TextEditingController(text: "${amount.toInt()}");
                          },
                        );
                      },
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "®1 lac",
                            style: TextStyle(fontSize: 15),
                          ),
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
                    //Tow
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 70, left: 20, right: 290),
                          child: Text(
                            "Tenure",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                            width: 60,
                            height: 40,
                            color: Colors.white,
                            child: TextField(
                              controller: txtyear,
                              onChanged: (value) {
                                setState(() {
                                  year = double.parse(value);
                                });
                              },
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.timelapse)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: year,
                      max: 30,
                      min: 0,
                      activeColor: Colors.pink,
                      onChanged: (value) {
                        setState(
                          () {
                            year = value;
                            txtyear =
                                TextEditingController(text: "${year.toInt()}");
                          },
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "1",
                            style: TextStyle(fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 360),
                            child: Text(
                              "30",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Three
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 70, left: 20, right: 310),
                          child: Text(
                            "Rat",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                            width: 50,
                            height: 40,
                            color: Colors.white,
                            child: TextField(
                              controller: txtRat,
                              onChanged: (value) {
                                setState(() {
                                  rat = double.parse(value);
                                });
                              },
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.percent_rounded)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: rat,
                      max: 15,
                      min: 1,
                      activeColor: Colors.pink,
                      onChanged: (value) {
                        setState(
                          () {
                            rat = value;
                            txtRat =
                                TextEditingController(text: "${rat.toInt()}");
                          },
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            "1",
                            style: TextStyle(fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 360),
                            child: Text(
                              "15",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "\n\n\n\n\nYour Emi",
                          style: TextStyle(fontSize: 20,color: Colors.pink),
                        ),
                    ),
                    //Month
                    Padding(
                      padding: const EdgeInsets.only(top: 100,left: 20),
                      child: Text("Monthly Home Lone Emi",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text("${Emi.toInt()}",style: TextStyle(
                        fontSize: 45,color: Colors.pink,
                      ),
                      ),
                    ),
                    //amount
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text("Principal Amount",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text("${amount.toInt()}",style: TextStyle(
                        fontSize: 35,color: Colors.black,
                      ),
                      ),
                    ),
                    //interest
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text("Interest Amount",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text("${interest.toInt()}",style: TextStyle(
                        fontSize: 35,color: Colors.black,
                      ),
                      ),
                    ),
                    //total
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Text("Total Amount Payable",style: TextStyle(fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20,bottom: 80),
                      child: Text("${total.toInt()}",style: TextStyle(
                        fontSize: 35,color: Colors.black,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Calculate
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  interest=(amount*rat*year)/100;
                  total=interest+amount;
                  Emi=total/(year*12);
                });
              },
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
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black12,
    );
  }
}
