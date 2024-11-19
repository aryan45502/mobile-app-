void checkOddEven(int number) {
  if (number % 2 == 0) {
    print('$number is Even');
  } else {
    print('$number is Odd');
  }
}

void main() {
  checkOddEven(5);
  checkOddEven(8);
}
