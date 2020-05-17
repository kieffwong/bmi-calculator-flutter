import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String resultBMI() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getAdvice() {
    if (_bmi >= 25) {
      return 'Your BMI hight than normal. Try to exercise more and eat healthier.';
    } else if (_bmi > 18.5) {
      return 'Your BMI is normal. Keep the good work.';
    } else {
      return 'Your BMI is below the normal. You can eat more. ';
    }
  }
}
