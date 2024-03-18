import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/utils/size/app_size.dart';
import '../../../view_model/calculator_value.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.title,
    required this.color,
  });

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        pressButton((title ?? ""), context);
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(8.getW()),
        child: Container(
          height: 60.getH(),
          width: 60.getW(),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30.getW(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void pressButton(String title, BuildContext context) {
  CalculatorValue calculatorValue =
      Provider.of<CalculatorValue>(context, listen: false);

  String numberString = calculatorValue.numberString;
  bool shouldCalculate = calculatorValue.shouldCalculate;

  if (title == "+" || title == "-" || title == "*" || title == "/") {
    if (shouldCalculate) {
      calculatorValue.calculateValue();
    } else {
      calculatorValue.result = double.parse(numberString) ?? 0;
      calculatorValue.shouldCalculate = true;
    }

    calculatorValue.numberString = '';
    calculatorValue.operation = title;
  } else if (title == '=') {
    calculatorValue.calculateValue();
    calculatorValue.shouldCalculate = false;
  } else if (title == 'AC') {
    calculatorValue.numberString = '';
    calculatorValue.displayString = '0';
    calculatorValue.shouldCalculate = false;
  }
    else if (title == 'X') {
      calculatorValue.numberString = '';
      calculatorValue.displayString = '0';
      calculatorValue.shouldCalculate = false;
  } else {
    if (numberString == 'X') {
      calculatorValue.displayString = '0';
    }
    calculatorValue.numberString += title;
    calculatorValue.displayString = numberString;
  }
}
