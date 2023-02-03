import 'dart:math';

class Calculator_brain{

  final int height;
  final int weight;

  late double _bmi;

  Calculator_brain({required this.height,required this.weight});

  String BMICalc(){
    _bmi=weight/pow((height/100),2);
    return _bmi.toStringAsFixed(1);
  }

  String Result(){
    if(_bmi>=25){
      return "Overweight";
    }
    else if (_bmi<=18.5){
      return "Underweight";
    }

    else{
      return "Normal";
    }
  }

  String Interpretation(){
    if(_bmi>=25){
      return "You are too fat...fatso,better eat less and excersise more";
    }
    else if (_bmi<=18.5){
      return "How the hell are you alive...are you living your life on steroids?";
    }
    else{
      return "Wow Noice!";
    }
  }

}