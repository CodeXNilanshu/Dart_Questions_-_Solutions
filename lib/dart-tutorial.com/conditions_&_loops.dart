//1. Write a dart program to check if the number is odd or even.
//code :
//
// void main() {
//   int n = 10;
//   if (n % 2 == 0) {
//     print('even');
//   } else {
//     print('odd');
//   }
// }

//----------------------------------------------------------------------------------------------------------

//2.Write a dart program to check whether a character is a vowel or consonant.
//code:
//
// void main() {
//   // user input
//   // check the character
//   // if it's a i e o u then vowel
//   // otherwise consonant
//
//   String input = 'z';
//
//   if (input == 'a' ||
//       input == 'e' ||
//       input == 'i' ||
//       input == 'o' ||
//       input == 'u') {
//     print('character $input is vowel');
//   } else {
//     print('character $input is consonant');
//   }
// }

//----------------------------------------------------------------------------------------------------------

//3.Write a dart program to check whether a number is positive, negative, or zero.
//code:

// void main() {
//   /*
//   1. take user input
//   2. check if it is greater than zero or less than zero or equals to zerp
//   3. print it
//    */
//
//   int num = -85;
//   if (num > 0) {
//     print('Positive');
//   } else if (num == 0) {
//     print('Zero');
//   } else {
//     print('Negative');
//   }
// }

//----------------------------------------------------------------------------------------------------------

//4.Write a dart program to print your name 100 times.
//code:
//
// void main() {
//   String name = 'Nilanshu Sharma';
//
//   for (int i = 0; i < 100; i++) {
//     print(name);
//   }
// }

//----------------------------------------------------------------------------------------------------------

//5.Write a dart program to calculate the sum of natural numbers.
//code:

/**
 Natural numbers consist of all positive whole numbers:
    Examples: 1, 2, 3, 4, 5, 10, 100, 1,000,000...
    They go on forever (to infinity).
 */
//import 'dart:io';
// void main() {
//   int userStartingNumber = 10;
//   int userLastNumber = 15;
//   int sum = 0;
//
//   for (int i = userStartingNumber; i <= userLastNumber; i++) {
//     sum = sum + i;
//   }
//
//   print(sum);
// }

//----------------------------------------------------------------------------------------------------------

//6. Write a dart program to generate multiplication tables of 5.
//code:

// void main() {
//   for (int i = 1; i <= 10; i++) {
//     print(5 * i);
//   }
// }

//7. Write a dart program to generate multiplication tables of 1-9.
// code:

// void main() {
//   print('Enter the number of which you want to generate multiplication table');
//   int inputNumber = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
//
//   for (int i = 1; i <= 10; i++) {
//     print("${inputNumber * i}");
//   }
// }

//----------------------------------------------------------------------------------------------------------

//8. Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
//code:

//
// import 'dart:io';
//
// void main() {
//
//   stdout.write('Enter the opertion you wanna perform: ');
//   String userInputOp = (stdin.readLineSync() ?? '');
//   stdout.write('Enter the first number: ');
//   double num1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
//   stdout.write('Enter the second number: ');
//   double num2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
//
//   if (userInputOp == '+') {
//     print(num1 + num2);
//   } else if (userInputOp == '-') {
//     print(num1 - num2);
//   } else if (userInputOp == '*') {
//     print(num1 * num2);
//   } else if (userInputOp == '/') {
//     print(num1 / num2);
//   } else {
//     print('Invalid');
//   }
//
// }

//----------------------------------------------------------------------------------------------------------

//9.Write a dart program to print 1 to 100 but not 41.
//code:
//
// void main() {
//   for (int i = 1; i <= 100; i++) {
//     if (i != 41) {
//       print(i);
//     } else {
//       //  return;
//       // break;
//       continue;
//     }
//   }
// }

/**
 Here "Using continue skips the current iteration (41) and moves to the next number, whereas break exits the loop entirely and return terminates the whole function. To skip a single value while keeping the loop running, continue is the correct choice."
 */
