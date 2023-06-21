/*Faça um programa que receba o custo de um espetáculo teatral e o 
preço do convite desse espetáculo.
Esse programa deverá calcular e mostrar a quantidade de convites
que devem ser vendidos para pelo menos, o custo do espetáculo seja
alcançado.​*/


import 'dart:io';
main() {

  print('Qual o valor do ingresso? ');        //podendo ultilar "print(); ou stdout.write();"
    double valorDoIngresso = double.parse(stdin.readLineSync()!);
      print(valorDoIngresso);

  stdout.write('Qual o custo do museu? ');
    double custoDoMuseu = double.parse(stdin.readLineSync()!);
      print(custoDoMuseu);

  print('A quantidade de ingressos vendidos tem que ser no mimo de: ' + (custoDoMuseu/ valorDoIngresso).toStringAsFixed(2));

}