main() {
  print(inverso(-3));
}

inverso(valor) {
  if (valor is bool) {
    return !valor;
  } else if (valor is num) {
    //mudar sinal para o oposto
    return valor = -valor;
  } else {
    return 'booleano ou número esperados, mas o parâmetro é do tipo: ${valor.runtimeType}';
  }
}
