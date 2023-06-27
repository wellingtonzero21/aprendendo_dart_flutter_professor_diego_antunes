import '../modelo/cliente.dart';
import '../modelo/item.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';

main(){
  var venda = Venda(
  cliente: Cliente(
      nome: "Wellington",
      cpf: "123456789",
    ),
  itens: <Item>[
    Item(
      quantidade: 3,
      produto: Produto(
        codigo: 34,
        nome: "Lapis",
        preco: 5,
        desconto: 0.1
      )
    ),
    Item(
      quantidade: 4,
      produto: Produto(
        codigo: 35,
        nome: "Caneta",
        preco: 2.50,
        desconto: 0,
      )
    )
  ]
  );

  print('O valor tatal da venda é de: R\$${venda.valorTotal}');
}