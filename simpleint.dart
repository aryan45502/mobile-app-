import 'dart:io';

import 'FactorialCalculator.dart';
import 'TemperatureConverter.dart';

void main() {

  double principal = promptUserForInput("Enter principal amount:");
  double rate = promptUserForInput("Enter annual interest rate (as a percentage):");
  double time = promptUserForInput("Enter time duration (in years):");


  double simpleInterest = computeSimpleInterest(principal, time, rate);
  print("The calculated Simple Interest is: $simpleInterest");
}


double computeSimpleInterest(double principal, double time, double rate) {
  return (principal * time * rate) / 100;
}


double promptUserForInput(String message) {
  print(message);
  return double.parse(stdin.readLineSync()!);
}
