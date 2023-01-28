import 'package:flutter/material.dart';

class Bottom_Button extends StatelessWidget {

  final String buttonTitle;
  final Function()? onTap;

  Bottom_Button({required this.buttonTitle,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        color:const Color(0xFFEB1555),
        margin:const EdgeInsets.only(top:10.0),
        padding: const EdgeInsets.only(top: 20.0),
        width:double.infinity,
        height: 80.0,
        child: Text(buttonTitle,textAlign: TextAlign.center,style: const TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
      ),
    );
  }
}