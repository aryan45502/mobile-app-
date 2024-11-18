import 'dart:io';

void main() {
 
  double temperatureValue = readTemperature("Enter the temperature value:");


  String sourceUnit = getTemperatureUnit("Specify the input unit (C, F, K):");
  String targetUnit = getTemperatureUnit("Convert to (C, F, K):");

  double? result = temperatureConverter(temperatureValue, sourceUnit, targetUnit);

  if (result != null) {
    print("Converted temperature in $targetUnit: $result");
  } else {
    print("Error: Invalid conversion.");
  }
}


double readTemperature(String prompt) {
  while (true) {
    print(prompt);
    String? input = stdin.readLineSync();
    if (input != null) {
      try {
        return double.parse(input);
      } catch (_) {
        print("Invalid input. Please enter a valid number.");
      }
    } else {
      print("Input cannot be empty.");
    }
  }
}

String getTemperatureUnit(String prompt) {
  print(prompt);
  while (true) {
    String? unit = stdin.readLineSync()?.toUpperCase();
    if (unit == 'C' || unit == 'F' || unit == 'K') {
      return unit;
    } else {
      print("Invalid unit. Please choose from C, F, or K.");
    }
  }
}


double? temperatureConverter(double value, String fromUnit, String toUnit) {
  double tempInCelsius;

 
  switch (fromUnit) {
    case 'C':
      tempInCelsius = value;
      break;
    case 'F':
      tempInCelsius = (value - 32) * 5 / 9;
      break;
    case 'K':
      tempInCelsius = value - 273.15;
      break;
    default:
      return null;
  }

  
  switch (toUnit) {
    case 'C':
      return tempInCelsius;
    case 'F':
      return (tempInCelsius * 9 / 5) + 32;
    case 'K':
      return tempInCelsius + 273.15;
    default:
      return null;
  }
}
