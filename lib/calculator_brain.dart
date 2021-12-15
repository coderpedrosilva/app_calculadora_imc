import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'Abaixo do Peso';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Peso Normal';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'Sobrepeso';
    } else if (_bmi >= 30 && _bmi <= 34.9) {
      return 'Obesidade grau I';
    } else if (_bmi >= 35 && _bmi <= 39.9) {
      return 'Obesidade grau II';
    } else {
      return 'Obesidade Grau III';
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'Você está abaixo do peso';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Você está com o peso ideal!';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'Você está um pouco acima do peso!';
    } else if (_bmi >= 30 && _bmi <= 34.9) {
      return 'Você está acima do peso';
    } else if (_bmi >= 35 && _bmi <= 39.9) {
      return 'Você precisa emagrecer';
    } else {
      return 'Você está acima do peso, precisa de orientação médica';
    }
  }
}
