/*Faça um programa que receba dois números, calcule e mostre a subtração do primeiro pelo segundo.*/

import 'dart:io';

main() {
  stdout.write('Digite um numero: ');
    num numero1 = num.parse(stdin.readLineSync()!);
  
  stdout.write('Digite outro numero: ');
    num numero2 = num.parse(stdin.readLineSync()!);

  print('A subitração entre os dois numeros é: ' + (numero1 - numero2).toStringAsFixed(0));
}