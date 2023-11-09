import 'dart:math';

main() {
  int a = 2;
  int b = 3;
  somaDeInteiros(a, b);
  somaDeDoisNumeros();
}

void somaDeDoisNumeros() {
    int n1 = Random().nextInt(11);
    int n2 = Random().nextInt(11);
    print('Os numeros escolhidos foram $n1 e $n2 .');
    print(n1 + n2);
}

void somaDeInteiros(int a, int b){
  print('executei');
  print(a + b);
}
