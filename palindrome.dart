import 'dart:io';

void main() {

  String userInput = promptUser("Enter a string to check if it's a palindrome:");
  

  bool isPalindrome = verifyPalindrome(userInput);


  if (isPalindrome) {
    print("'$userInput' is a palindrome.");
  } else {
    print("'$userInput' is not a palindrome.");
  }
}


String promptUser(String message) {
  print(message);
  return stdin.readLineSync()!.trim();
}


bool verifyPalindrome(String input) {
  String cleanedInput = input.toLowerCase().replaceAll(RegExp(r'\s+'), '');
  String reversedInput = cleanedInput.split('').reversed.join('');
  return cleanedInput == reversedInput;
}
