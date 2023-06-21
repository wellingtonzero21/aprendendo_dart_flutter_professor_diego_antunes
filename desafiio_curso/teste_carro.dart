import 'carro.dart';

main(){
  var c1 = new Carro();
  while(!c1.estaNoLimite()){
    print("A velocidade atual é ${c1.acelerar()}Km/h ");
  }
  print("o carro chegou no maximo com velocidade ${c1.velocidadeAtual}");
}