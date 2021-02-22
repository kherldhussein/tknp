import 'package:flutter/material.dart';
import 'package:tknp/anim/animated.dart';

class IsoCertified extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return WidgetAnimator(
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Text(
                "AN ISO 9001:2008 CERTIFIED INSTITUTION  ",
                style: textTheme.subtitle1,
              ),
              Image.asset('assets/images/ISO-9001.gif', scale: 4)
            ],
          ),
        ),
      ),
    );
  }
}
