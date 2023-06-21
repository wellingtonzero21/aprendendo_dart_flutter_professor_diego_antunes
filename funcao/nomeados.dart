main() {
  saudarPessoa(nome:'Maria', idade: 18);
  saudarPessoa(idade: 564, nome: 'ue?llington');
}

saudarPessoa({String? nome, int? idade}) {
  print('Olá, $nome legal quem vc tem $idade anos');
}
