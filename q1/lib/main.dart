import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceRoll());
}

class DiceRoll extends StatefulWidget {
  const DiceRoll({Key? key}) : super(key: key);

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int myDice = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blue,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin:const EdgeInsets.all(100),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            myDice = Random().nextInt(6) + 1;
                          });
                        },
                        child:
                            Image(image: AssetImage('images/dice$myDice.png')),
                      )),
                ),
                Container(
                  width: double.infinity,
                )
              ],
            )),
      ),
    );
  }
}
