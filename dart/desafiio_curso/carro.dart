/*
1) carro.dart
Classe com construtor recebe a velocidade maxima...
int vel maxima
int vel ataul

int acelerar() {...}
int freiar() {...}
bool esta no limite()- verdadeiro ou falso

2) teste_carro.dart main - os dois carros


*/

class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual;
    
    Carro([this.velocidadeMaxima = 160, this.velocidadeAtual = 80]);
    
  int acelerar(){
    if(velocidadeAtual +5 >= velocidadeMaxima){
      velocidadeAtual = velocidadeMaxima;
  } else{velocidadeAtual += 5;}
        return velocidadeAtual;
  }
  int? frear(){
    if(velocidadeAtual -5 <= 0){
      velocidadeAtual = 0;
    }else{velocidadeAtual -= 5;}
        return velocidadeAtual;
  }
  
  bool estaNoLimite(){
    return velocidadeAtual == velocidadeMaxima;
    }

  bool estaParado(){
    return velocidadeAtual == 0;
  }
}