import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.light(primary:Color(0xFF0A0E21)),
          scaffoldBackgroundColor:const Color(0xFF0A0E21),
        ),
        home: InputPage(),
    );
  }
}




