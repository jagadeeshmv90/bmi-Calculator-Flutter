import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_expanded.dart';
import 'icon_text.dart';

const activeColor = Color(0xFFFDFDFD);
const inActiveColor = Color(0xFFEDEDED);
const blueButtonColor = Color(0xFF1788ff);
const blueButtonHeight = 55.0;
const darkTextColor = Color(0xFF1E1E1E);

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
  CardType selectedCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          //First Row
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCard = CardType.male;
                    });
                  },
                  child: ReusableExpanded(
                    colour: selectedCard == CardType.male ? activeColor : inActiveColor,
                    cardChild: IconTextBox(
                        iconContent: FontAwesomeIcons.mars,
                        textContent: 'MALE'),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCard = CardType.female;
                    });
                  },
                  child: ReusableExpanded(
                    colour: selectedCard == CardType.female ? activeColor : inActiveColor,
                    cardChild: IconTextBox(
                        iconContent: FontAwesomeIcons.venus,
                        textContent: 'FEMALE'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: ReusableExpanded(colour: activeColor)), // FullWidth Row
        Expanded(
          //Bottom Row
          child: Row(
            children: [
              Expanded(child: ReusableExpanded(colour: activeColor)),
              Expanded(child: ReusableExpanded(colour: activeColor)),
            ],
          ),
        ),
        Container(
          color: blueButtonColor,
          width: double.infinity,
          height: blueButtonHeight,
          margin: EdgeInsets.only(top: 10.0),
        ),
      ],
    );
  }
}

enum CardType { male, female }
