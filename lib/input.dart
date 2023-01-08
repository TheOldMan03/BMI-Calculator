import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const activeColour=Color(0xFF1D1E33);
const inactiveColour=Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleColour=inactiveColour;
  Color femaleColour=inactiveColour;

  void changeColour(int gender) {
    //gender=1 for male and gender=2 for female
    if (gender == 1) {
      femaleColour=inactiveColour;
      if (maleColour == inactiveColour) {
        maleColour = activeColour;
      }

      else {
        maleColour = inactiveColour;
      }
    }

    else if (gender==2){
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
                              changeColour(1);
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
                              changeColour(2);
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
                              Text('Female',style: TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98)))
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
                    color:const Color(0xFF1D1E33)
                ),
                )
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
            ]
          )
        );


  }
}

