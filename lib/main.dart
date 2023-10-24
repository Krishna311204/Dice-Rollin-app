import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceRollerApp());
  Scaffold(
    backgroundColor: const Color.fromARGB(
        255, 243, 135, 33), // Set your desired background color
    // Other widgets and content go here
  );
}

class DiceRollerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice Roller App'),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> diceFaces = [
      '⚀',
      '⚁',
      '⚂',
      '⚃',
      '⚄',
      '⚅',
    ];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Rolled Number: $diceNumber',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20.0),
          Text(
            diceFaces[diceNumber - 1],
            style: TextStyle(fontSize: 100.0),
          ),
          SizedBox(height: 20.0),
          TextButton(
            onPressed: rollDice,
            child: Text(
              'Roll the Dice',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ],
      ),
    );
  }
}
