import 'dart:io';

///Collection in dart means list, sets, maps and where.
///For this I have to learn Maps but also at the same time i have to learn fastAPI as well.

//1. Create a list of names and print all names using list.
//code:
//
// List<String> list = ['Nilanshu', 'Luffy', 'Ronoazoro'];
//
// void main() {
//   print(list);
// }

//----------------------------------------------------------------------------------------------------------

//2. Create a set of fruits and print all fruits using loop.
//code:
//
// Set<String> fruits = {'apple', 'mango', 'watermelon'};
//
// void main() {
//   print(fruits);
// }

//----------------------------------------------------------------------------------------------------------

//3. Create a program thats reads list of expenses amount using user input and print total.
//code:

/**
 *The .fold() function in Dart is a built-in List method used to reduce a collection to a single value by iteratively combining each element with an existing value. It is highly versatile and can be used for tasks like summing numbers, concatenating strings, or even building complex data structures like Maps.
 *
 * How it Works? : The method takes two primary arguments:
 *
 * 1. Initial Value: The starting value for the accumulation.
 * 2. Combine Function: A callback that takes two parameters:
 *    2.1 Previous Value (Accumulator): The result from the previous step (or the initial value for the first step).
 *    2.2 Element: The current item from the list being processed.
 *
 *    Syntax : T fold<T>(T initialValue, T combine(T previousValue, E element))
 *
 * T represents the type of the result, which can be different from the type of elements in the collection.
 *
 * Example: Summing a List
 *
 * void main() {
    List<int> numbers = [1, 2, 3, 4, 5];

    // Starting with 0, add each element to the running total
    int sum = numbers.fold(0, (previous, current) => previous + current);

    print(sum); // Output: 15
    }
 */

// //what i coded after learning :
// import 'dart:io';
//
// void main() {
//   List<double> newList = [];
//
//   while (true) {
//     print('(write done to culculate the sum)');
//     stdout.write('Enter the Expense amount: ');
//
//     String? input = stdin.readLineSync();
//
//     if (input == 'done') {
//       break;
//     }
//     newList.add(double.tryParse(input ?? '') ?? 0);
//   }
//   double result = newList.fold(0, (previous, current) => previous + current);
//   print(result);
// }

//*************************************************

// //Claude generated :
//
// import 'dart:io'; // For reading user input from the console
//
// void main() {
//   // List to store all entered expense amounts
//   List<double> expenses = [];
//
//   print('Enter expenses. Type "done" to finish.');
//
//   // Keep reading input until user types "done"
//   while (true) {
//     String? input = stdin.readLineSync(); // Read a line from the console
//
//     if (input == 'done') break; // Stop the loop if user is done
//
//     expenses.add(double.parse(input!)); // Convert input to double and add to list
//   }
//
//   // Sum all expenses using fold (starts at 0, adds each element)
//   double total = expenses.fold(0, (sum, e) => sum + e);
//   print('Total: $total');
// }
//

///0 is just the starting value of the sum, not an index.

//Extra info, it is not needed for this question
/**
 *In Dart, readByteSync() is a method used to synchronously read a single byte from a data source, typically a file or the standard input (stdin).Because it is a synchronous operation, it blocks the execution of your program until a byte is available or the operation completes
 */

//----------------------------------------------------------------------------------------------------------

//4.Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
//code:
//
// void main() {
//   List<String> days = [];
//
//   days.addAll(
//       ['Monday', 'Tuesday', 'Wednesday', 'Thrusday', 'Friday', 'Saturday', 'Sunday']);
//
//   print(days);
// }

//----------------------------------------------------------------------------------------------------------

//5. Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
//code :
//
// List<String> friendsName = [];
//
// void main() {
//   friendsName.add('aditya');
//   friendsName.add('Shubham');
//   friendsName.add('Karthik');
//   friendsName.add('Martin');
//   friendsName.add('Priyal');
//   friendsName.add('Divyani');
//   friendsName.add('ashwini');
//
//   print(friendsName.where((name) => name.startsWith('a')).toList());
//
///this will exactly find the name start with 'a', if name start with 'A' then it won't consider it
// }

//----------------------------------------------------------------------------------------------------------
