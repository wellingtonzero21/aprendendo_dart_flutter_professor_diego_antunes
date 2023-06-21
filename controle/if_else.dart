import 'dart:math';
main() {
  var nota = Random().nextInt(11);
  print(nota);

  if(nota >= 7) {
    print('Aprovado');
  } else if(nota >= 5) {
    print('Recuperação $nota .Fazer trabalho para recuperar');
  }
  else {
    print('Reprovado BURRÃO');
  }
}