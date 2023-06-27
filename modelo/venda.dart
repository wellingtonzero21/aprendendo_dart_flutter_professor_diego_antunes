import './cliente.dart';
import './item.dart';

class Venda {
  Cliente? cliente;
  List<Item> itens;

  Venda({this.cliente, this.itens = const[]});

  double get valorTotal{
    double total = 0.0;
      for(Item i in itens){
        total += i.quantidade! * i.preco;
      }
    return total;
  }
}