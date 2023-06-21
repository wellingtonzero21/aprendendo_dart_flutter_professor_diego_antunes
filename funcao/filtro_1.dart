main() {
  var notas = [8.2, 9.2, 1.7, 7,9, 5.4, 4.8, 2.2, 7.1];
  var notasBoas = [];
  var notasRuins = [];

  for(var nota in notas) {
    if(nota >= 7) {
      notasBoas.add(nota); 
    }
  }
  print(notasBoas);

  for(var notas2 in notas) {
    if(notas2 <= 6) {
      notasRuins.add(notas2);
    } 
  }
  print(notasRuins);
}  