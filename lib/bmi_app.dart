import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_text_box.dart';
import 'constants.dart';
import 'bottom_buttonBar.dart';
import 'bmi_calculator_brain.dart';

class MyBMIApp extends StatefulWidget {
  @override
  _MyBMIAppState createState() => _MyBMIAppState();
}

class _MyBMIAppState extends State<MyBMIApp> {
//  void updateColor(CardType gender) {
//    if (gender == CardType.male) {
//      maleCardColor = activeColor;
//      femaleCardColor = inActiveColor;
//    }
//    if (gender== CardType.female) {
//      femaleCardColor = activeColor;
//      maleCardColor = inActiveColor;
//    }
//  }
  Gender selectedGender;
  int heightInt = 140;
  int weightInt = 40;
  int ageInt = 25;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Center(
        child: Text(
        'BMI CALCULATOR', style: kAppBarTextStyle,
    ),
    ),
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          //First Row
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  genderChooser: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kActiveColor
                      : kInactiveColor,
                  cardChild: IconTextBox(
                      iconContent: FontAwesomeIcons.mars, textContent: 'MALE'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  genderChooser: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kActiveColor
                      : kInactiveColor,
                  cardChild: IconTextBox(
                      iconContent: FontAwesomeIcons.venus,
                      textContent: 'FEMALE'),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ReusableCard(
          colour: kActiveColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HEIGHT',
                style: kSmallLabelStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    heightInt.toString(),
                    style: kHeavyLabelStyle,
                  ),
                  Text(
                    'cms',
                    style: kSmallLabelStyle,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: kBigButtonColor,
                  inactiveTrackColor: Color(0x521788ff),
                  overlayColor: Color(0x291788ff),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                ),
                child: Slider(
                  value: heightInt.toDouble(),
                  min: 120.0,
                  max: 200.0,
                  onChanged: (double newValue) {
                    setState(() {
                      heightInt = newValue.round();
                    });
                  },
                ),
              )
            ],
          ),
        )), // FullWidth Row

        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kSmallLabelStyle,
                      ),
                      Text(
                        weightInt.toString(),
                        style: kHeavyLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            tweakFn: () {
                              setState(() {
                                weightInt--;
                              });
                            },
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            tweakFn: () {
                              setState(() {
                                weightInt++;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kActiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kSmallLabelStyle,
                      ),
                      Text(
                        ageInt.toString(),
                        style: kHeavyLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.minus, tweakFn: (){
                            setState(() {
                              ageInt--;
                            });
                          },),
                          RoundIconButton(icon: FontAwesomeIcons.plus, tweakFn: (){
                            setState(() {
                              ageInt++;
                            });
                          },),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        BottomButton(buttonText: 'CALCULATE BMI', buttonFunction: (){
          BMIBrain bmiBrain = BMIBrain(heightInt: heightInt, weightInt: weightInt);
          Navigator.push(context,
          MaterialPageRoute(
            builder: (context) => ResultsPage(
              bmiResult: bmiBrain.bmiCalculator(),
              resultText: bmiBrain.getResults(),
              bmiOpinion: bmiBrain.getOpinion(),
            ),
          ));
        },),
      ],
    ), );
  }
}

enum Gender { male, female }


