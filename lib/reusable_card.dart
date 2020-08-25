import 'package:flutter/material.dart';

class ReusableExpanded extends StatelessWidget {
  ReusableExpanded({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFBBBBBB),
              blurRadius: 3.0,
              spreadRadius: 0.2,
            ),
          ],
        ),
        margin: EdgeInsets.all(10.0),
        child: cardChild,
    );
  }
}