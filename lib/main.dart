import 'package:flutter/material.dart';
import 'bmi_app.dart';
import 'constants.dart';

const primaryHeaderColor = Color(0xFF1788ff);
const scaffoldColor = Color(0xFFFEFEFE);

void main(){
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: primaryHeaderColor,
      scaffoldBackgroundColor: scaffoldColor,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator'
            ),
        ),
        ),
      body: MyBMIApp(),
//      floatingActionButton: Theme(
//        data: ThemeData(accentColor: Color(0xFFFFAE0C) ),
//        child: FloatingActionButton(
//          child: Icon(
//            Icons.alarm_add
//          ),
//        ),
      ),
  ),
  );
}