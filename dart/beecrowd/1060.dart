import 'dart:io';

// quantidade de valores positivos
void main(List<String> args) {
  List<double> nums = [];

  for (var i = 0; i < 6; i++) {
    String? input = stdin.readLineSync();
    double? n = double.tryParse(input!);
    if (n != null) {
      nums.add(n);
    }
  }

  int count = 0;
  for (var n in nums) {
    if (n.isNegative) {
    } else {
      count++;
    }
  }
  print('$count valores positivos');
}
