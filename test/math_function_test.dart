import 'package:flutter_test/flutter_test.dart';
import '../lib/math_function.dart';

void main() {
  group('MathFunction tests', () {
    final mathFunction = MathFunction();

    test('Correct calculation of function', () {
      expect(mathFunction.calculate(0), '-1.00');
      expect(mathFunction.calculate(1), '-0.60');
      expect(mathFunction.calculate(-1), '1.50');
    });

    test('Handles undefined values gracefully', () {
      expect(mathFunction.calculate(2), 'undefined');
      expect(mathFunction.calculate(-2), 'undefined');
    });
  });
}
