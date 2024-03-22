// import 'dart:io';

// void main(List<String> args) {
//   String? n1 = stdin.readLineSync();
//   String? n2 = stdin.readLineSync();
//   String? n3 = stdin.readLineSync();
//   String? n4 = stdin.readLineSync();
//   String? n5 = stdin.readLineSync();
//   String? n6 = stdin.readLineSync();

//   double newNum1 = double.tryParse(n1!)!;
//   double newNum2 = double.tryParse(n2!)!;
//   double newNum3 = double.tryParse(n3!)!;
//   double newNum4 = double.tryParse(n4!)!;
//   double newNum5 = double.tryParse(n5!)!;
//   double newNum6 = double.tryParse(n6!)!;

//   final nums = [newNum1, newNum2, newNum3, newNum4, newNum5, newNum6];

//   int count = 0;
//   for (var n in nums) {
//     if (n.isNegative) {
//     } else {
//       count++;
//     }
//   }
//   print('$count valores positivos');
// }

// teste(List<double> nums) {
//   int count = 0;
//   for (var n in nums) {
//     if (n.isNegative) {
//     } else {
//       count++;
//     }
//     // print('$count valores positivos');
//     // return count;
//   }
//   print('$count valores positivos');
// }

import 'dart:io';

void main(List<String> args) {
  List<double> nums = [];

  for (var i = 0; i < 6; i++) {
    String? input = stdin.readLineSync();
    double? num = double.tryParse(input!);
    if (num != null) {
      nums.add(num);
    }
  }

  int count = contarValoresPositivos(nums);
  print('$count valores positivos');
}

int contarValoresPositivos(List<double> nums) {
  int count = 0;
  for (var n in nums) {
    if (n.isNegative) {
    } else {
      count++;
    }
  }
  return count;
}
