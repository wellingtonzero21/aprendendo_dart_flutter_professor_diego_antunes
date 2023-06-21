
main() {
  var alunos = [
    {'nome': 'Alfrredo', 'nota': 9.9},
    {'nome': 'Alan', 'nota': 8.9},
    {'nome': 'vanessa', 'nota': 7.9},
    {'nome': 'Ricardo', 'nota': 6.9},
    {'nome': 'Well', 'nota': 5.9},
    {'nome': 'Roberta', 'nota': 4.9},
  ];
  String Function(Map) pegarNomes = (aluno) => aluno ['nome'];
  int Function(String) quantidadeDeLetras = (texto) => texto.length;
  var nomes = alunos
     .map(pegarNomes)
     .map(quantidadeDeLetras);
      print(nomes);
}