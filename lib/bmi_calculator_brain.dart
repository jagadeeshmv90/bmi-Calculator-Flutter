import 'package:flutter/material.dart';
import 'dart:math';

class BMIBrain {
  BMIBrain({@required this.heightInt, @required this.weightInt});
  final int heightInt;
  final int weightInt;
  double _userBMI;

  String bmiCalculator(){
    _userBMI = weightInt / pow(heightInt/100, 2);
    return _userBMI.toStringAsFixed(2);
  }

  String getResults(){
    if(_userBMI >= 25){
      return "OVERWEIGHT!";
    } else if(_userBMI > 18.5){
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getOpinion(){
     if(_userBMI >= 25){
      return "You gotta eat less and exercise a lot.";
    } else if(_userBMI > 18.5){
      return "Going good. Keep the good work up.";
    } else {
      return "You can include more food in your diet.";
    }
  }

}
