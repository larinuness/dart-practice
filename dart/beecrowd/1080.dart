import 'dart:io';

//maior numero e o indice
void main(List<String> args) {
  List<int> nums = [];
  int maior = 0;
  int indice = 0;

  for (var i = 1; i <= 100; i++) {
    String? input = stdin.readLineSync();
    int? n = int.tryParse(input!);
    if (n != null) {
      nums.add(n);
      for (var element in nums) {
        if (element > maior) {
          maior = element;
          indice = i;
        }
      }
    }
  }

  print(maior);
  print(indice);
}
