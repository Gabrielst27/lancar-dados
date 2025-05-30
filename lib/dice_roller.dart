import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 1;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            setState(() {
              currentDiceRoll = randomizer.nextInt(6) + 1;
            });
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(16),
            foregroundColor: Colors.white,
            backgroundColor: Colors.amber,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Rolar'),
        ),
      ],
    );
  }
}
