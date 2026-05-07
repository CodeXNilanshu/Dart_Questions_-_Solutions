/// write notes of programs here only in the documents comments.
/// I have turn off the Gemini suggestions & auto complete for this project so whenever you start making a project - turn it on. It's really helpful.

//----------------------------------------------------------------------------------------------------------

//1. Write a program in Dart that finds simple interest.
// Formula= (p * t * r) / 100

//code:
// void main() {
//   // this can be done as well
//   // int p, q, r;
//   int p = 10, q = 15, r = 5;
//
// // calculate simple interest
//   double si = (p * q * r) / 100;
//
//   print("Si:$si");
// }
//

//----------------------------------------------------------------------------------------------------------

//2. Write a program to print a square of a number using user input.

//code:

// import 'dart:io';
//
// void main() {
//     print('Enter the number');
//   double? s = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
//   print(s * s);
// }

/**
   * This is a multi-line documentation comment
   * using the block style.
   */

/**

The Dart analysis is giving you an error on the line print(s * s); because of Null Safety.

The Problem :

You defined s as a nullable double (double?). In Dart, you cannot perform mathematical operations (like *) on a variable that might be null.
Even though you used ! on the previous line (stdin.readLineSync()!),the double.tryParse method itself can still return null if the user types something that isn't a number (like "abc"). Because s could be null, Dart prevents you from multiplying it to avoid a crash.

The Fix :

You have two main ways to fix this:

Option 1: Use a default value (Recommended)
Use the null-coalescing operator (??) to provide a fallback value (like 0) if the parsing fails. This changes the type of s from double? to double.

void main() {
  // If tryParse fails, s will be 0.0 instead of null
  double s = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  print(s * s);
}

Option 2: Check for null before using it
If you wrap the calculation in an if statement, Dart is smart enough to "promote" s to a non-nullable double inside that block.

void main() {
  double? s = double.tryParse(stdin.readLineSync() ?? '');

  if (s != null) {
    print(s * s); // No error here because Dart knows s is not null
  } else {
    print("Invalid input. Please enter a number.");
  }
}
*/

/**

      To understand why both ?? operators are needed, we have to look at the "Chain of Nullability." Each part of that line handles a different way the code could fail.

      Here is the breakdown of double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

      1. The first ?? '' (Handling the Input)
      Why it’s there: stdin.readLineSync() returns a String? (a nullable string). It returns null if the input stream is closed or broken. However, double.tryParse() refuses to accept a null value; it requires a real string (even if that string is empty).
      What happens if you remove it? If you write double.tryParse(stdin.readLineSync()), the Dart analyzer will give you a compile error:
      "The argument type 'String?' can't be assigned to the parameter type 'String'."
      The logic: stdin.readLineSync() ?? '' says: "Try to get the user input. If for some reason it is null, use an empty string '' instead."

      2. How double.tryParse handles an empty string ''?
      You asked: What will happen if there's an empty string—how will it convert?
      The Answer: double.tryParse is designed not to crash. If you give it an empty string '', or random text like "abc", it cannot turn that into a number. Instead of throwing an error, it simply returns null.
      double.tryParse("10.5") → returns 10.5
      double.tryParse("") → returns null
      double.tryParse("hello") → returns null

      3. The second ?? 0.0 (Handling the Result)
      Why it’s there: Because tryParse returns null when the input is invalid (like an empty string), the variable s would become null. As you saw before, you cannot do math (s * s) on a null value.
      What happens if you remove it? If you write double? s = double.tryParse(...), then s is allowed to be null. But the moment you try to do s * s, the analyzer will block you because you can't multiply "nothing" by "nothing."
      The logic: The second ?? 0.0 is your safety net. It says: "If tryParse returned a number, use it. But if tryParse returned null (because the input was empty or invalid), set the variable to 0.0."
   */

//----------------------------------------------------------------------------------------------------------

// 3. Write a program to find quotient and remainder of two integers.
//code :

// void main() {
//   int a = 15, b = 4;
//
//   int q = a ~/ b;
//   int r = a % b;
//   print("Quotient: $q");
//   print("Remainder: $r");
// }

/**

1. The ~/ Operator (Truncating Division) :

    The Truncating Division operator divides two numbers and returns only the integer part (the quotient) of the result, discarding any fractional/decimal digits.

    Result Type: Always returns an int.

   2.  The % Operator (Modulo/Remainder) :

    The Modulo operator returns the remainder left over after one number is divided by another.

    Result Type: Usually returns an int (if both operands are integers). The modulo operator (%) return a double value in Dart in all other cases.

    int % int = int
    double % int = double
    int % double = double
    double % double = double
    */

//----------------------------------------------------------------------------------------------------------

//4. Write a program to swap two numbers.
//code :

/* Method 1 : Using a Function

void main() {
  int a = 5;
  int b = 7;


 var p = (a, b) {
    return (b, a);
  };

  print(p); // output :Closure: (dynamic, dynamic) => (dynamic, dynamic)
  print(p(a, b)); // output : (7, 5)
  }
*/
/**why ?"print(p); // output :Closure: (dynamic, dynamic) => (dynamic, dynamic)"

      The reason you see Closure: (dynamic, dynamic) => (dynamic, dynamic) instead of the swapped numbers is that p is the function itself, not the result of the function.

      In Dart, when you assign a function to a variable, that variable becomes a "Closure" (a function object).
      Breakdown of what is happening:
      The Definition:
      var p = (a, b) {
      return (b, a);
      };

      Here, you are creating an anonymous function and storing it in the variable p. You haven't actually "run" the code inside the curly braces yet.

      The First Print (print(p)): When you print p, Dart looks at the variable and says: "This variable contains a function (a Closure) that takes two arguments and returns a Record." It prints the description of the function type rather than executing it.

      The Second Print (print(p(a, b))): By adding the parentheses (a, b), you are calling (invoking) the function. This executes the code inside, returns the Record (7, 5), and that result is what gets printed.

   */

/* Method 2 : The Modern Way (Destructuring)
This is the cleanest way to swap two variables in Dart:


void main() {
  int a = 5;
  int b = 7;

  (a, b) = (b, a);
  print('a : $a, b : $b');
}

 */

/*
Method 3 :The Classic Way (Temporary Variable)
void main() {
  int a = 5;
  int b = 7;

  int temp = a;
  a = b;
  b = temp;
  print('a: $a, b: $b');
}
 */

//----------------------------------------------------------------------------------------------------------

//5. Write a program in Dart to remove all whitespaces from String.
//code:

/*
void main() {
  String s = 'I am great coder';
  print(s);
  String withoutWhitespaes = s.replaceAll(' ', '');
  print(withoutWhitespaes);
}
 */

/**
 Why didn't the original code work?

    Important Note: In Dart, Strings are immutable. This means s.replaceAll(' ', '') does not change the original string s; instead, it returns a new string. You must assign that result back to a variable to see the change.
 *
 * In Dart, Strings are immutable. When you call s.replaceAll(' ', ''),
 * the method calculates the result ('Iamagreatcoder') and returns it,
 * but it leaves the original variable 's' exactly as it was.
 *
 * To fix it, you must capture the return value:
 * s = s.replaceAll(' ', '');
 *
 *
 */

//----------------------------------------------------------------------------------------------------------

//6. Write a Dart program to convert String to int.
//code:

/*
void main() {
  String s = '15';
  int? n = int.tryParse(s ?? '');
  print(n);
}
 */

//----------------------------------------------------------------------------------------------------------

//7.Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people
