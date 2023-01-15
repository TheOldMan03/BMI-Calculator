import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const activeColour=Color(0xFF1D1E33);
const inactiveColour=Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender{male,female}

class _InputPageState extends State<InputPage> {

  Color maleColour=inactiveColour;
  Color femaleColour=inactiveColour;

  int height=180;

  void changeColour(Gender g) {
    //gender=1 for male and gender=2 for female
    if (g==Gender.male) {
      femaleColour=inactiveColour;
      if (maleColour == inactiveColour) {
        maleColour = activeColour;
      }

      else {
        maleColour = inactiveColour;
      }
    }

    else if (g==Gender.female){
      maleColour=inactiveColour;
      if(femaleColour==inactiveColour){
        femaleColour=activeColour;
      }
      else{
        femaleColour=inactiveColour;
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          centerTitle: true,
        ),

        body:Column(
            children: <Widget>[
              Expanded(
                child: Row(
                    children:[
                      Expanded(
                          child:
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                changeColour(Gender.male);
                              });
                            },
                            child: Container(
                              margin:const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color:maleColour
                              ),

                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(FontAwesomeIcons.mars,size: 80.0),
                                  SizedBox(height: 15.0),
                                  Text('Male',style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98)))
                                ],
                              ),
                            ),
                          )
                      ),

                      Expanded(child:

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            changeColour(Gender.female);
                          });
                        },

                        child: Container(
                            margin:const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color:femaleColour
                            ),

                            child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(FontAwesomeIcons.venus,size: 80.0),
                                  SizedBox(height: 15.0),
                                  Text('Female',style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98))),
                                ]
                            )
                        ),
                      )
                      ),
                    ]
                ),
              ),

              Expanded(
                child:  Container(

                    margin:const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:activeColour
                    ),


                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text('Height',textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98))),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,

                          children: [
                            Text(height.toString(),style: const TextStyle(fontSize:50.0,fontWeight:FontWeight.w900)),
                            const Text('cm',style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98)))
                        ],),

                        Slider(
                        value: height.toDouble(),
                        min:120.0,
                        max: 220.0,
                        activeColor:const  Color(0xFFEB1555),
                        inactiveColor: const Color(0xFF8D8E98),
                        onChanged: (double newVal){
                          setState(() {
                            height=newVal.round();
                          });
                        }
                        )
                      ],
                    )
                ),

              ),


              Expanded(child: Row(
                  children:[
                    Expanded(
                        child:  Container(
                          margin:const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color:const Color(0xFF1D1E33)
                          ),
                        )
                    ),

                    Expanded(
                        child:  Container(
                          margin:const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color:const Color(0xFF1D1E33)
                          ),
                        )
                    ),

                  ]
              ),
              ),

              Container(
                color:const Color(0xFFEB1555),
                margin:const EdgeInsets.only(top:10.0),
                width:double.infinity,
                height: 80.0,
              )
            ]));
  }
}