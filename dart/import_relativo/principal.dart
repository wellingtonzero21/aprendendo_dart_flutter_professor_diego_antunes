
import './pessoa.dart';
// caso precise acessar de outra pasta no mesmo computador
// import '../"nome da pasta"/"nome do arquivo.dart" 
main() {
  var p1 = Pessoa();
    p1.nome = 'joão';
  print(p1.nome);
}