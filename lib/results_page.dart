import 'package:flutter/material.dart';
import 'bottom_button.dart';

class Results_Page extends StatelessWidget {

  final String bmiResults;
  final String resultText;
  final String inter;

  Results_Page({required this.bmiResults,required this.resultText,required this.inter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text("Your Results",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50.0),),
            ),
          ),
          Expanded(
            flex: 5,
            child:
            Container(
              margin:const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color:const Color(0xFF1D1E33)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(resultText,style: const TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Color(0xFF24D876))),
                  Text(bmiResults,style: const TextStyle(fontSize: 100.0,fontWeight: FontWeight.bold)),
                  Text(inter,textAlign: TextAlign.center,style: TextStyle(fontSize: 22.0))
                ],
              ),
            )
    ,
          ),
          Bottom_Button(buttonTitle: "Re-Calculate", onTap: (){
            Navigator.pop(context);
          })
        ],



      )

    );
  }
}



