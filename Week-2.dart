import 'dart:io';

void main() {
  print("Enter  First Number: ");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter  Second Number: ");
  double num2 = double.parse(stdin.readLineSync()!);
  SafeDivide(num1 , num2);
}

SafeDivide(double? a, double? b) {
  if (b == 0 || b == null || a == null) {
    print("Cannot divide by zero!");
  } else {
    print("Output: ${a / b}");
  }
}
// import 'dart:io';

// void main() {
//   //دي الماب الي هشتغل بيها او هخزن فيها
//   Map students = {};
//   while (true) {
//     // كدا انا هدخل الاسم واتاكد انه موجود وانه لو ضن يقفل
//     print("Enter student name (or 'done' to finish):");
//     String? name = stdin.readLineSync();
//     if (name == null || name == "done") {
//       break;
//     }
//     //دي كدا هدخل الدرجات وواتاكد من الرينج بتاعها واحولها
//     print("Enter $name grade:");
//     double grade = double.parse(stdin.readLineSync()!);
//     if (grade > 100 || grade < 0) {
//       print("Invalid grade. Please enter a grade between 0 and 100.");
//       continue;
//     }
//     //دي كدا هخزن الاسم و الدرجة في ال map
//     students[name] = grade;
//   }
//   // حتت اني احولها لست علشان اطلع المتكرر دي مش منطقي ما ممكن لو عملت كدا من في الاسماء ممكن اسمين متكررين طيب لو الدرجات ما ممكن اتنين جايبين نفس الدرجات عادي فا لي اصلا
//   List grades = students.values.toList();
//   List List_sort = grades.toList()..sort();
//   double Maxgrade = List_sort.last; //اكبر رقم هوا اول رقم في الترتيب
//   double Mingrade = List_sort.first; //اصغر رقم هوا اخر رقم في الترتيب
//   double Total = 0;
//   List_sort.forEach((element) {
//     Total += element;
//   });
//   //دي كدا هحسب المتوسط
//   double average = Total / List_sort.length;
//   //اجيب اسم الطالب
//   String topStudents = "";
//   String lowStudents = "";
//   students.forEach((name, grade) {
//     if (grade == Maxgrade) topStudents = name;
//     if (grade == Mingrade) lowStudents = name;
//   });
//   print("Result: \n");
//   print("Highest grade: $Maxgrade by $topStudents \n");
//   print("Lowest grade: $Mingrade by $lowStudents\n");
//   print("Average grade: $average \n");


//   var sortedStudents = students.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
//   print("\nSorted Grades (High to Low):");
//   for (var entry in sortedStudents) {
//     print("${entry.key} (${entry.value})");
//   }

  
//   List aboveAverage = [];
//   students.forEach((name, grade) {
//     if (grade > average) {
//       aboveAverage.add(name);
//     }
//   });

//   print("\nAbove Average Students: ${aboveAverage.join(", ")}");
// }

