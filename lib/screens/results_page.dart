import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  static const String routeName = 'results';

  @override
  Widget build(BuildContext context) {
    final ResultsScreenData data = ModalRoute.of(context).settings.arguments as ResultsScreenData;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: activeBlue,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data.resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    data.bmiResult,
                    style: bmiTextStyle,
                  ),
                  Text(
                    data.interpretation,
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

const titleTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);

const resultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const bmiTextStyle = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);

const bodyTextStyle = TextStyle(fontSize: 22.0);

class ResultsScreenData {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsScreenData(this.bmiResult, this.resultText, this.interpretation);
}
