import 'animal.dart';

class Cachorro extends Animal {
  late String nome;
  late String raca;

  Cachorro({required this.nome,required this.raca, barulho}) : super(barulho: barulho);
  }