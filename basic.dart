import 'dart:io';

void main() {
 
  double firstNumber = promptForNumber("Enter the first number: ");
  double secondNumber = promptForNumber("Enter the second number: ");
  String operation = promptForOperator();


  double? result = performCalculation(firstNumber, secondNumber, operation);

  if (result != null) {
    print("Result: $result");
  } else {
    print("Error: Invalid operation or division by zero.");
  }
}

double promptForNumber(String message) {
  print(message);
  return double.tryParse(stdin.readLineSync()!) ?? 0.0; 
}


String promptForOperator() {
  print("Choose an operation (+, -, *, /):");
  return stdin.readLineSync() ?? '';
}


double? performCalculation(double first, double second, String operator) {
  switch (operator) {
    case '+':
      return first + second;
    case '-':
      return first - second;
    case '*':
      return first * second;
    case '/':
      return second != 0 ? first / second : null;
    default:
      return null; 
  }
}
