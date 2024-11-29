class MathFunction {
  double calculate(int x) {
    if (x == 8 || x == -8) {
      throw ArgumentError('Value of x = 8 or x = -8 leads to division by zero');
    }
    return (x - 4) / (4 - x * x);
  }
}
