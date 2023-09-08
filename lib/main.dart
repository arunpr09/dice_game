import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text(
            'Dice game',
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void changeDiceFace() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      // Wrap everything in a Column
      children: <Widget>[
        Expanded(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      changeDiceFace();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('images/dice$leftDice.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        changeDiceFace();
                      },
                      child: Image.asset('images/dice$rightDice.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Center(
          child: Text(
            'Developed by Arun',
            style: TextStyle(
              fontSize: 15.0,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
