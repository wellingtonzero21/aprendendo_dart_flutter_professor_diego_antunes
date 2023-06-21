

class Data {
  int? dia;
  int? mes;
  int? ano;

  //construtor com parametros

  /*Data(int diaInicial, int mesInicial, int anoInicial) {
    dia = diaInicial;
    mes = mesInicial;
    ano = anoInicial;
  }*/

    Data([this.dia, this.mes, this.ano]);

    // Construtores nomeados
    Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
    Data.ultimoDiaDoAno({this.dia = 31, this.mes = 12, this.ano});

  obter() {
    print("$dia/$mes/$ano");
  }

  String obterFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString(){
    return obterFormatada();
  }
}

main() {
  var dataAnoversario = new Data(8, 1, 2003);
  /*dataAnoversario.dia = 08;
  dataAnoversario.mes = 01;
  dataAnoversario.ano = 2003;*/
  
  Data dataCompra = new Data(1, 1, 1970);
  //dataCompra.dia = 25;
  dataCompra.mes = 02;
  dataCompra.ano = 2003;

  //print("${dataAnoversario.dia}/${dataAnoversario.mes}/${dataAnoversario.ano}");
  //print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

  dataAnoversario.obter();
  dataCompra.obter();
  
  print(Data.com(dia: 8));
  var dataFinal = Data.com(dia: 8, mes: 12, ano: 2002);
  print(dataFinal);
  print(Data.ultimoDiaDoAno(ano: 2023));
}