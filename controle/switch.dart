import 'dart:math';

main() {
  var nota = Random().nextInt(11);
  print('Nota sorteada foi $nota');

  switch(nota) {
    case 10:
    print('Carai cuzaum');
    break;

    case 7: 
    print('Aprovado');
    break;
    default:                            //se não. fim
    print('Nota invalida');
  }
}