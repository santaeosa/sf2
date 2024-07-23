import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = Random().nextInt(6) + 1;
  int rightDice = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          "DiceApp",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 30.0,
      ),
      body: Center(
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                  setState(() {});
                  print(leftDice);
                },
                child: Image.asset('assets/img/dice$leftDice.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Image.asset('assets/img/dice$rightDice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
