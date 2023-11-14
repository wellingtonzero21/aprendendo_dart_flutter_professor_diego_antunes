import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Brasileirão'),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            final tabela = controller.tabela;
            return ListTile(
              leading: Image.network(""),
              title: Text("Nome do time"),
              trailing: Text("N. de Pontos"),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          itemCount: controller.tabela.lengh),
    );
  }
}
