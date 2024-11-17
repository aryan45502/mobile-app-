import 'dart:io';

void main() {
  print('Enter a positive integer:');
  double input = double.parse(stdin.readLineSync()!);

  if (input < 0) {
    print('Error! Please enter a non-negative integer.');
  } else if (input == 0) {
    print('Factorial of 0 = 1');
  } else {
    int number = input.toInt();
    int factorial = computeFactorial(number);
    print('Factorial of $number = $factorial');
  }
}

int computeFactorial(int number) {
  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}
