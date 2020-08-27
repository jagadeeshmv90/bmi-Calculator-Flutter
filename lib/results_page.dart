import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_buttonBar.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.bmiOpinion});
  final String bmiResult;
  final String resultText;
  final String bmiOpinion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI CALCULATOR', style: kAppBarTextStyle
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Your BMI', style: kBMIDisplayStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Expanded(
            flex: 7,
            child: ReusableCard(colour: kActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  resultText.toUpperCase(), style: kSmallLabelStyle,
                ),
                Text(
                  bmiResult.toUpperCase(), style: kBMIResultDisplayStyle,
                ),
                Text(
                  bmiOpinion, style: kBMIDescriptionStyle, textAlign: TextAlign.center,
                )
              ],
            ),),
          ),
         BottomButton(buttonText: 'RECALCULATE', buttonFunction: (){
           Navigator.pop(context);
         })
        ],
      ),
    );
  }
}
