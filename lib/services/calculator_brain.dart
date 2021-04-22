import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi = 0.0;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print(_bmi);

    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher weight than normal. You should eat less.';
    } else if (_bmi > 18.5) {
      return 'You have a normal weight. Kudos!!!';
    } else {
      return 'You have a lower weight than normal. You should eat more.';
    }
  }
}
