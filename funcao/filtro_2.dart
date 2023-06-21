main() {
  var notas = [8.2, 9.2, 1.7, 7,9, 5.4, 4.8, 2.2, 7.1];

  bool Function(num) notasBoasFn = (num nota) => nota >= 7; 

  var notasBoas = notas.where(notasBoasFn);
  print(notas);
  print(notasBoas);
}