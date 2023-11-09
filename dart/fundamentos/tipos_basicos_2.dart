/* 
  - List
  - Set
  - Map
*/ 

main () {
  
  //List

  List aprovados = ['Ana','Wellington', 'Rafael'];
    print(aprovados.elementAt(1));
    print(aprovados[0]);

    //Map 

    var telefones = {
      'João': '+55 (21) 99776-6554',
      'Wellington': '+55 (21) 97654-3210',
      'Felipe': '55 (21) 98765-4322',
    };
    print(telefones is Map);
    print(telefones['Wellington']);
    print(telefones.length);
    print(telefones.values);
    print(telefones.keys);
    print(telefones.entries);

    var times = {'Flamengo', 'Vasco', 'Fortaleza'};
      print(times is Set);
      print(times);
      times.add('Palmeiras');
      print(times.length);
      print(times.last);
}