import 'dart:io';

//mensagem oculta
void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    String text = stdin.readLineSync()!;
    String result = '';

    List<String> words = text.split(' ');

    for (String word in words) {
      if (word.trim().isNotEmpty) {
        result += word.trim()[0]; 
      }
    }

    print(result);
  }
}
