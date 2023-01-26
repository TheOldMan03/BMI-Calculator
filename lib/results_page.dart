import 'package:flutter/material.dart';
import 'bottom_button.dart';

class Results_Page extends StatelessWidget {
  const Results_Page({Key? key}) : super(key: key);

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
                children: const [
                  Text("Normal",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Color(0xFF24D876))),
                  Text("18.3",style: TextStyle(fontSize: 100.0,fontWeight: FontWeight.bold)),
                  Text("You should suck on these Balls! Ha Ligma",textAlign: TextAlign.center,style: TextStyle(fontSize: 22.0))
                ],
              ),
            )
    ,
          ),
          BottomButton(title: "Re-Calculate",onTap:() {Navigator.pop(context);})
        ],



      )

    );
  }
}



