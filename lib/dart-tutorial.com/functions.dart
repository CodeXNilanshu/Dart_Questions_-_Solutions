//1. Write a program in Dart to print your own name using function.
//code:

//Method 1 :
// void main() {
//   String name = 'Nilanshu Sharma';
//   void abc() {
//     print(name);
//   }
//
//   abc();
// }

//Method 2:

// void main() {
//   BB().abc();
// }
//
// class BB {
//   String name = 'Nilanshu Sharma';
//   void abc() {
//     print(name);
//   }
// }

//----------------------------------------------------------------------------------------------------------

//2. Write a program in Dart to print even numbers between intervals using function.
//code:

/**
    When the question asks you to print even numbers "between intervals," it is asking you to:
    Take two numbers as input (e.g., a start and an end).
    Print all the even numbers that fall between those two values.

    Example:
    If your interval is 10 to 20:
    Start: 10
    End: 20
    The "Interval" is the set of all numbers from 10, 11, 12... up to 20.
    The Task: Print only the even ones (10, 12, 14, 16, 18, 20)
 */
//
// void main() {
//   int start = 8;
//   int end = 35;
//
//   // loop
//
//   void fn() {
//     for (int i = start; i <= end; i++) {
//       if (i % 2 == 0) {
//         print(i);
//       }
//     }
//   }
//
//   fn();
// }

//----------------------------------------------------------------------------------------------------------

//3. Create a function called greet that takes a name as an argument and prints a greeting message. For example, greet(“John”) should print “Hello, John”.
//code:
//
// void main() {
//   void greet(String s) {
//     return print('Hello $s');
//   }
//
//   greet('John');
// }

//----------------------------------------------------------------------------------------------------------

//4. Write a program in Dart that generates random password.
//code:

import 'dart:io';
import 'dart:math';

/// Yk i spend a lot of time and solved this on my own - i just take reference of defining the string from stack overflow and searched small things like syntax, but i am proud i did it myself. Like all the question I am doing myself only but this was looking tough initially but it is not. I also read the documentation of different methods of dart inside the android studio
//
// import 'dart:io';
// import 'dart:math';
//
// void main() {
//   //assuming the password length should be 8
//   //for a mixedpassword of characters, integers and alphabets(with upper and lowercase both)
//   // There is no need of function so i am not writing one, we can create a function if we have to ask user to input the length of password he wants, and we can pass the user input in the forloop via the function
//
//   String str =
//       'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtXxWwYyZz0123456789!@#\$%&*';
//
//   for (int i = 0; i <= 8; i++) {
//     stdout.write(str[Random.secure().nextInt(str.length)]);
//   }
// }

//--------------------------------------------------------------------------------------------------------

//5. Write a program in Dart that find the area of a circle using function. Formula: pi * r * r
//code:

////explaination of ?? in basics file, if you want to reunderstand why and how they function
//
// import 'dart:math';
// import 'dart:io';
//
// void main() {
//   stdout.write('Enter the radius of circle: ');
//   double r = double.tryParse(stdin.readLineSync() ?? '') ??0;
//   double findAreaOfCircle() {
//     return (pi * r * r);
//   }
//
//   print(findAreaOfCircle());
// }

//--------------------------------------------------------------------------------------------------------

//6.Write a program in Dart to reverse a String using function.
//code:

/**
 * In Dart (and most programming languages), strings are zero-indexed. This means if a string has a length of 11, the characters are positioned from 0 to 10.

 */

// void main() {
//   String s = 'I am a hero';
//   void reverseString() {
//     for (int i = s.length - 1; i >= 0; i--) {
//       stdout.write(s[i]);
//     }
//   }
//
//   reverseString();

/**
   The list won't work because it will reverse the list not the string. basically if there are 3 string ['cat', 'dog', 'monkey'] it will reverse it's order not the actual words
   */
// List<String> RS = ['I am a hero'];
// String S = RS.reversed.toString();
// print(S);

//}

//--------------------------------------------------------------------------------------------------------

//7.Write a program in Dart to calculate power of a certain number. For e.g 5^3=125
//code:
//
// import 'dart:io';
// import 'dart:math';
//
// void main() {
//   stdout.write('Enter the number: ');
//   int f1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
//   stdout.write('Enter the power: ');
//   int p1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
//
//   int power = pow(f1, p1).toInt();
//
//   print(power);
// }

//--------------------------------------------------------------------------------------------------------

//8. Write a function in Dart named add that takes two numbers as arguments and returns their sum.
//code :

// void main() {
//   double add(double a, double b) {
//     return a + b;
//   }
//
//   print(add(5, 2));
// }

//--------------------------------------------------------------------------------------------------------

//9. Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
//code:

//Method 1:

//void main() {
//fn{}
//a b c argument
//return largest - if a>b & a>c then a is largest and repeat for other conditions

//   int a, b, c;
//   void maxNumber(a, b, c) {
//     if (a > b && a > c) {
//       print(a);
//     } else if (b > c && b > a) {
//       print(b);
//     } else if (c > a && c > b) {
//       print(c);
//     } else {
//       print('Invalid input');
//     }
//   }
//
//   maxNumber(5, 4, 7);
//   maxNumber(74, 474747, 4);
// }

//Method 2:
///this max allow only two positional arguments, so we did the operations multiple times and saved the response and then used those response and did the operation again.
//
// void main() {
//   int a = 500;
//   int b = 88;
//   int c = 2229;
//
//   int x = max(a, b);
//   int y = max(b, c);
//
//   int largestNum = max(x, y);
//
//   print(largestNum);
// }

//--------------------------------------------------------------------------------------------------------

//10. Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.
//code:

// Method 1 :
// void main() {
//   void isEven(int n) {
//     print(n.isEven);
//   }
//
//   isEven(8);
// }

/**
    Your code is partially correct in its logic, but it does not strictly follow the instructions of the question.

    Here are the three main issues:

    1. Return Value: The question asks the function to return True or False. Your function currently prints the result and returns nothing (void).

   2. Case Sensitivity: In Dart, the boolean values are lowercase (true and false). The question asks for True/False (likely a general logic question), but in code, they must be lowercase.

    3. Function Scope: While "local functions" (putting a function inside main) are allowed in Dart, it is standard practice to define functions outside of main.
 */

///Here is the corrected version:

//Method 2:
//
// bool isEven(int n) {
//   return n % 2 == 0;
// }
//
// void main() {
//   print(isEven(8));
// }

///Here we didn't solved the case sensitivity problem so :
//Method 3: Return a String
//
// String isEven(int n) {
//   if (n % 2 == 0) {
//     return 'True';
//   } else {
//     return 'False';
//   }
// }
//
// void main() {
//   print(isEven(6));
// }

//Method 4: Return a Boolean and format the output
///In professional programming, we usually keep the logic as a bool (lowercase) and only capitalize it when we show it to the user.

// bool isEven(int n) {
//   return n.isEven;
// }
//
// void main() {
//   bool result = isEven(7);
//
//   // Logic to capitalize the first letter when printing
//   if (result) {
//     print('True');
//   } else {
//     print('False');
//   }
// }

/**
    how this code works ? I mean we didn't say result should be true to print "True" how did it decide ?

    => This is a great question! It touches on how Boolean logic works in programming.
    In the line if (result), you are not explicitly writing == true, but Dart (and most languages) understands it automatically.

    Here is the breakdown: The "Hidden" Comparison

    When you write:
    if (result) { ... }

    It is exactly the same as writing:
    if (result == true) { ... }

    The if statement only cares about one thing: Is the value inside the parentheses true?
    If result is already true, the condition is satisfied.
    If result is false, the condition fails and it moves to the else.
 */

//--------------------------------------------------------------------------------------------------------

//11. Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.
//code:

///This is wrong way to do it and the explanation is below this code
// bool isActive = true;
//
// dynamic createUser(String name, int age, isActive) {
//   return name;
//   age;
//   isActive;
// }
//
// void main() {
//   print(createUser('Nilanshu', 24, isActive));
// }

/**
 question : why the age and true isn't printing here in the console when we run it?

    => The reason only the name is printing is because of how the return keyword works in programming.

    The Problem:

   1. The return rule: As soon as a function hits a return statement, it immediately stops and sends that single value back to where it was called. Anything written on the lines below return is ignored (this is called "unreachable code").

   2. Default Parameters: In Dart, to give a parameter a default value, you must wrap it in curly braces {}.

    The Solution :

    To print all three values, you should return a single object (like a String or a Map) that contains all the data.

 */

/// Here is the corrected code using Named Parameters (the standard way to handle default values in Dart):

// Q11. Write a function in Dart called createUser with parameters name, age, and isActive,

// where isActive has a default value of true.

// We use { } to make parameters optional/named and assign a default value

// String createUser(String name, int age, {bool isActive = true}) {
//   return "name: $name, age: $age, isActive: $isActive";
// }
//
// void main() {
//   // Since isActive has a default value, we don't even need to pass it!
//   print(createUser('N', 5));
//
//   // Or we can override it if we want:
//   print(createUser('S', 10, isActive: false));
// }

//--------------------------------------------------------------------------------------------------------

//12. Write a function in Dart called calculateArea that calculates the area of a rectangle. It should take length and width as arguments, with a default value of 1 for both. Formula: length * width.
//code:
//
// double calculateArea({double length = 1, double width = 1}) {
//   return length * width;
// }
//
// void main() {
//   print(calculateArea());
//   print(calculateArea(length: 5, width: 7));
// }
