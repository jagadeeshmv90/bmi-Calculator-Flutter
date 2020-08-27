import 'package:flutter/material.dart';
import 'constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.buttonFunction});
  final String buttonText;
  final Function buttonFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        child: Center(
          child: Text(
              buttonText, style: kButtonTextStyle),
        ),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        color: kBigButtonColor,
        width: double.infinity,
        height: kBigButtonHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
