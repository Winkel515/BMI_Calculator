import 'dart:math';

class CalculatorBrain {
  double _bmi;

  CalculatorBrain({int weight, int height}) {
    _bmi = weight / pow(height / 100.0, 2);
  }

  double getBMI() {
    return _bmi;
  }

  String getResult() {
    if (_bmi >= 30)
      return 'OBESE';
    else if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi >= 18.5)
      return 'NORMAL';
    else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30)
      return 'You have a much higher than normal body weight. Try to exercise more and eat less.';
    else if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    else if (_bmi >= 18.5)
      return 'You have a normal body weight.\nGood job!';
    else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
