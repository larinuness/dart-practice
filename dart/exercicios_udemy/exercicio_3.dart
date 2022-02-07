void main() {
  print(calcularSalario(150, 40.5));
}

calcularSalario(double horas, double salario) {
  return "Salário igual a: R\$ ${horas * salario}";
}
