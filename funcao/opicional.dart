import 'dart:math';
main() {
  int n1 = numeroAleatorio(100);
  print(n1);
  int n2 = numeroAleatorio();
  print(n2);
}

int numeroAleatorio([int maximo = 11]) {
  return Random().nextInt(maximo);
}
