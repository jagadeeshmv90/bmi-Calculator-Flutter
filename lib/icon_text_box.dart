import 'package:flutter/material.dart';
const blueButtonColor = Color(0xFF1788ff);
const blueTextColor = Color(0xFF1788ff);
class IconTextBox extends StatelessWidget {
  IconTextBox({@required this.iconContent, @required this.textContent});
  final IconData iconContent;
  final String textContent;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconContent,
          size: 45.0,
          color: blueButtonColor,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          textContent,
          style: TextStyle(
            color: blueTextColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}