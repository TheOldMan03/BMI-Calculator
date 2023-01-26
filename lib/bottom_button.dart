import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  final Function onTap;
  final String title;

  BottomButton({required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),

      child: Container(
          color: const Color(0xFFEB1555),
          margin: const EdgeInsets.only(top: 10.0),
          padding: const EdgeInsets.only(bottom: 20.0),
          width: double.infinity,
          height: 80.0,
          child: Center(child: Text(title, style: const TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold)))
      ),
    );
  }
}