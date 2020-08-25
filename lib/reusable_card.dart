import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour, this.cardChild, this.genderChooser});
  final Color colour;
  final Widget cardChild;
  final Function genderChooser;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: genderChooser,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colour,
            boxShadow: kSubtleShadow,
          ),
          margin: EdgeInsets.all(10.0),
          child: cardChild,
      ),
    );
  }
}

