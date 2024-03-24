void main(List<String> args) {
  List<int> list = [1, 2, 3, 31, 2, 3, 45, 323, 42];

  // list.sort((a, b) => a - b);
  list.toSet().toList();

  print(list);
}
