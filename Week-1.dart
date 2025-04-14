//                               Task 1
import 'dart:io';

void main() {
  while (true) {
    print("Enter The First Number : ");
    String num1 = stdin.readLineSync()!;
    if (num1 == 'exit') {
      print("Program ended.");
      break;
    } else {
      print("Enter The Second Number : ");
      String num2 = stdin.readLineSync()!;
      if (num2 == 'exit') {
        print("Program ended.");
        break;
      }
      double n1 = double.parse(num1);
      double n2 = double.parse(num2);
      print("Enter operation (+, -, *, /): ");
      String op = stdin.readLineSync()!;
      switch (op) {
        case '+':
          print("Result: ${n1 + n2}");
          break;
        case '-':
          print("Result: ${n1 - n2}");
          break;
        case '*':
          print("Result: ${n1 * n2}");
          break;
        case '/':
          print("Result: ${n1 / n2}");
          break;
      }
    }
  }
}
//                               Task 2
// import 'dart:io';

// void main() {
//     int Seats_remaining = 12;
//   while (true) {
//     print("Enter group size: ");
//     int group_size = int.parse(stdin.readLineSync()!);
//     if (group_size == 0) {
//       print("All buses are handled. Program ended.");
//       break;
//     }
//     const int Seats = 12;
//     if (group_size <= Seats_remaining) {
//       Seats_remaining -= group_size;
//       print("Seats remaining: $Seats_remaining");

//     } else {

//       print("Not enough seats! Moving to the next bus.");
//       print("New Bus Started");
//       Seats_remaining = Seats - group_size;
//       print("Seats remaining: $Seats_remaining");
      
//     }
//   }
// }
//                               Task 3
// void main() {
//   int Seats_remaining = 12;
//   while (true) {
//     print("Enter group size: ");
//     int group_size = int.parse(stdin.readLineSync()!);
//     if (group_size == 0) {
//       print("All buses are handled. Program ended.");
//       break;
//     }
//     const int Seats = 12;
//     if (group_size <= Seats_remaining) {
//       Seats_remaining -= group_size;
//       print("Seats remaining: $Seats_remaining");
//     } else {
//       print("Not enough seats! Moving to the next bus.");
//       print("New Bus Started");
//       Seats_remaining = Seats - group_size;
//       print("Seats remaining: $Seats_remaining");
//     }
//   }
// }