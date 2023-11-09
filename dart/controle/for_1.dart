

// PARTE 1

main() {
  /*for(int a = 0; a <= 10; a++) {
  print(a);
  }
  for(int a = 10; a >= 0; a -= 1) {
  print(a);
  }


  // PARTE 2

  var notas = [0.5, 5.8, 9, 8.9];
    for(var nota in notas) {  	          //for in 
      print("O valor da nota é $nota");
    }*/


//PARTE 3

  Map<String, double> notas2 = {
      'Jõao Pedro' : 9.9,
      'Fernanda Dete' : 0.5,
      'Roberto Carlos' : 1.9,
      'Jose Felipe' : 10.9,
      };

      for(String nome in notas2.keys){
      print('nome do aluno é: $nome');
      }

      for(double notas in notas2.values){
        print('A nota do aluno é: $notas');
      }

      //OUUUUU 

      for(String nome in notas2.keys) {
        print('O aluno $nome e sua nota ${notas2[nome]}' );
      }
      
      //tambem

      for(var registro in notas2.entries){
        print('${registro.key} tem a nota ${registro.value}');
      }
}