import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('Roll Dice'),
      //   backgroundColor: Colors.white,
      // ),
      body: InkWell(
        onTap: changeDice,
        child: Container(
          padding: const EdgeInsets.only(top: 60, bottom: 30),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/ludo.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Tab to Roll",
                  style: TextStyle(
                      fontFamily: "OoohBaby",
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown)),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 50),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.brown.withOpacity(0.8),
                            border: Border.all(
                              color: Colors.brown,
                              width: 2,
                            ),
                          ),
                          width: 120,
                          height: 120,
                          child: Image.asset('images/dice$rightDiceNumber.png'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.brown.withOpacity(0.8),
                            border: Border.all(color: Colors.brown, width: 2),
                          ),
                          width: 120,
                          height: 120,
                          child: Image.asset('images/dice$leftDiceNumber.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
