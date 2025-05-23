import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  GradientContainer.purple({super.key})
    : colors = [
        const Color.fromARGB(255, 136, 52, 255),
        const Color.fromARGB(255, 116, 38, 224),
        const Color.fromARGB(255, 93, 27, 185),
        const Color.fromARGB(255, 74, 18, 153),
        const Color.fromARGB(255, 58, 11, 122),
        const Color.fromARGB(255, 45, 7, 98),
        const Color.fromARGB(255, 26, 2, 80),
      ];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
