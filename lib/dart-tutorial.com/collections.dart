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

/*
approch :
1. Stdin
2. store input in list
3. loop through list and add them
4. print it
 */

int input = (int.tryParse(stdin.readLineSync() ?? '') ?? 0);
List<int> list = [];
void main() {
  stdout.write('Enter expenses amount: ');
  list.add(input);
  print(list);
}

//this is incomplete will continue it later
