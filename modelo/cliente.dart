class Cliente{
  String? nome;
  String? cpf;

  Cliente({this.nome, this.cpf});
  // ou parametros nomeados acrescentando {}
  
}

main(){
  var c1 = Cliente(nome: 'Flavio', cpf: '111.222.333.44');

  print('Cliente ${c1.nome} cpf ${c1.cpf}');
}