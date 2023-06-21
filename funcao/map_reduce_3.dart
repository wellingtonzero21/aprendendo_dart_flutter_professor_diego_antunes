main() {
  var alunos = [
    {'nome': 'Alfrredo', 'nota': 9.9},
    {'nome': 'Alan', 'nota': 8.9},
    {'nome': 'vanessa', 'nota': 7.9},
    {'nome': 'Ricardo', 'nota': 6.9},
    {'nome': 'Well', 'nota': 5.9},
    {'nome': 'Roberta', 'nota': 4.9},
  ];

  var total = alunos
  .map((aluno) => aluno['nota'])
  .map((nota) => (nota as double).roundToDouble())
  .reduce((t, a) => t + a);

  print('A média da turma é: ${total / alunos.length}');
}
