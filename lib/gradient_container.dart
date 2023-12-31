import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //ou GradientContainer({key}) : super(key: key);
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.grey({super.key})
      : color1 = const Color.fromARGB(255, 99, 100, 100),
        color2 = const Color.fromARGB(255, 74, 90, 89);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
