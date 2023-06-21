 main() {
  var notas = [7.6, 6.6, 4.3, 8.9, 9.0, 10.0, 1.0, 6.9];
  var total = notas.reduce(somar);
    print(total);

  var nomes = ["Ana, Bia, Catia"];
    print(nomes.reduce(juntar));
 }

double somar(double acumulador, double elemento) {
  print("$acumulador $elemento");
  return acumulador + elemento;
}

String juntar(String acumulador, String elemento) {
  return "$acumulador, $elemento";
}