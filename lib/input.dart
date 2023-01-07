import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR')
        ),

        body:Column(
            children: <Widget>[
              Expanded(
                child: Row(
                    children:[
                      Expanded(child: ReusableCard(colour:const Color(0xFF1D1E33))),
                      Expanded(child: ReusableCard(colour:const Color(0xFF1D1E33))
                      ]
                  ),
                ),

               Expanded(
                child: ReusableCard(colour:const Color(0xFF1D1E33))
              ),
              Expanded(child: Row(
                  children:[
                    Expanded(child: ReusableCard(colour:const Color(0xFF1D1E33))),
                    Expanded(child: ReusableCard(colour:const Color(0xFF1D1E33)))
                  ]
              ),
              ),
            ]
        )
    );
  }
}

class ReusableCard extends StatelessWidget {
  /*const ReusableCard({
    Key? key,
  }) : super(key: key); */ //here the key is used to keep track of any change that can happen during the screen

  ReusableCard({required this.colour,this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color:const Color(0xFF1D1E33)
        ),
      );
  }
}


