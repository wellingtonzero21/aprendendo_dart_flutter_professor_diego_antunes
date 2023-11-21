import 'package:flutter/material.dart';
import 'package:flutter_professor_diego/models/times.dart';
import 'package:flutter_professor_diego/models/titulo.dart';

import 'add_titulo_page.dart';

// ignore: must_be_immutable
class TimePage extends StatefulWidget {
  Time time;
  TimePage({super.key, required this.time});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  tituloPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            AddTituloPage(time: widget.time, onSave: this.addTitulo),
      ),
    );
  }

  addTitulo(Titulo titulo) {
    setState(() {
      widget.time.titulo.add(titulo);
    });
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Salvo com sucesso!')));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.time.cor,
          title: Center(child: Text(widget.time.nome)),
          actions: [
            IconButton(
              onPressed: tituloPage,
              icon: Icon(Icons.add),
            )
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.stacked_bar_chart),
                text: "Estatísticas",
              ),
              Tab(
                icon: Icon(Icons.emoji_events),
                text: "Títulos",
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Image.network(widget.time.brasao),
                ),
                Text(
                  "Pontos: ${widget.time.pontos}",
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
            titulos(),
          ],
        ),
      ),
    );
  }

  Widget titulos() {
    final quantidade = widget.time.titulo.length;

    return quantidade == 0
        ? Container(
            child: Center(child: Text('Nenhum Título Ainda!')),
          )
        : ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.emoji_events),
                title: Text(widget.time.titulo[index].campeonato),
                trailing: Text(widget.time.titulo[index].ano),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: quantidade,
          );
  }
}
