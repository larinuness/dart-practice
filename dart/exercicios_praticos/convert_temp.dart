void main(List<String> args) {
  double temp = 32;

  print(celsiusToFahrenheit(temp));
}

celsiusToFahrenheit(double temp) {
  return temp * 1.8 + 32;
}
