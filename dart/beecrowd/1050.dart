import "dart:io";

void main(List<String> args) {
  String? input = stdin.readLineSync();
  String resultado = "";

  switch (input) {
    case "61":
      resultado = "Brasilia";
      break;
    case "71":
      resultado = "Salvador";
      break;
    case "11":
      resultado = "Sao Paulo";
      break;
    case "21":
      resultado = "Rio de Janeiro";
      break;
    case "32":
      resultado = "Juiz de fora";
      break;
    case "19":
      resultado = "Campinas";
      break;
    case "27":
      resultado = "Vitoria";
      break;
    case "31":
      resultado = "Belo Horizonte";
      break;
    default:
      resultado = "DDD nao cadastrado";
  }

  print(resultado);
}


  // resultado = switch (input) {
  //   "61" => "Brasilia",
  //   "71" => "Salvador",
  //   "11" => "Sao Paulo",
  //   "21" => "Rio de Janeiro",
  //   "32" => "Juiz de fora",
  //   "19" => "Campinas",
  //   "27" => "Vitoria",
  //   "31" => "Belo Horizonte",
  //   _ => "DDD nao cadastrado"
  // };
