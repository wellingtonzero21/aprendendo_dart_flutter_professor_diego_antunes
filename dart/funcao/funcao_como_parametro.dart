import 'dart:math';

void executar(Function fnPar, Function fnImpar) {
     
    var sorteado = Random().nextInt(10);
    sorteado % 2 == 0? fnPar() : fnImpar();
    print('o valor sorteado foi $sorteado');
  }
main() {
  var minhaFnPar = () => print('O valor é par! ');
  var minhaFnImpar = () => print('O valor é ímpar!');

  executar(minhaFnPar, minhaFnImpar);
}