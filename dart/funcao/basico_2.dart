import 'dart:math';

main() {
  int resultado = somar(2, 3);
    resultado *= 2;
    print('O dobro do resultado é: $resultado');

  print('o resultado é: ${numerosAleatorio()}');
}

int somar(int a, int b) {
  return a + b;
}

int numerosAleatorio() {
  int c = Random().nextInt(11);
  int d = Random().nextInt(11);
  print('A soma entre o numero $c e numero de $d');
  return(c + d);

}