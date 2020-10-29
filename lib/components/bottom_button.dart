import 'package:bmi_calculator/theme/colors.dart';
import 'package:bmi_calculator/theme/style.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;

  BottomButton({@required this.buttonTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage()));
    // I prefer to use a real navigator
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(
            this.buttonTitle,
            style: largeButtonTextStyle,
          ),
        ),
        color: bottomRed,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
