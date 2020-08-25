import 'package:flutter/material.dart';
import 'constants.dart';


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
          color: kBlueButtonColor,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          textContent,
          style: kSmallLabelStyle,
        )
      ],
    );
  }
}
