import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_text_box.dart';
import 'constants.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
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
              Slider(
                value: heightInt.toDouble(),
                min: 120.0,
                max: 200.0,
                onChanged: (double newValue){
                  setState(() {
                    heightInt = newValue.round();
                  });

                },
              )
            ],
          ),
        )), // FullWidth Row
        Expanded(
          //Bottom Row
          child: Row(
            children: [
              Expanded(child: ReusableCard(colour: kActiveColor)),
              Expanded(child: ReusableCard(colour: kActiveColor)),
            ],
          ),
        ),
        Container(
          color: kBlueButtonColor,
          width: double.infinity,
          height: kBlueButtonHeight,
          margin: EdgeInsets.only(top: 10.0),
        ),
      ],
    );
  }
}

enum Gender { male, female }
