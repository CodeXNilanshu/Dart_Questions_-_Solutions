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

void main() {
  String s = 'I am a hero';
  void reverseString() {
    for (int i = s.length - 1; i >= 0; i--) {
      stdout.write(s[i]);
    }
  }

  reverseString();
  /**
   The list won't work because it will reverse the list not the string. basically if there are 3 string ['cat', 'dog', 'monkey'] it will reverse it's order not the actual words
   */
  // List<String> RS = ['I am a hero'];
  // String S = RS.reversed.toString();
  // print(S);
}
