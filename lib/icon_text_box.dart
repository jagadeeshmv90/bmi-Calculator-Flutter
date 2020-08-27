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
          color: kBigButtonColor,
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


class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.tweakFn});
  final IconData icon;
  final Function tweakFn;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: tweakFn,
      shape: CircleBorder(),
      fillColor: kBigButtonColor,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
