import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'bmi_app.dart';
import 'constants.dart';


void main(){
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: primaryHeaderColor,
      scaffoldBackgroundColor: scaffoldColor,
    ),
    routes: {
      '/': (context) => MyBMIApp(),
      '/results': (context) => ResultsPage(),
    },
    initialRoute: '/',
  ), );
}