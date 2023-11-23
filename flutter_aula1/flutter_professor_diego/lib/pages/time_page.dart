import 'package:flutter/material.dart';
import 'package:flutter_professor_diego/models/times.dart';
import 'package:flutter_professor_diego/pages/edit_titulo_page.dart';
import 'package:flutter_professor_diego/repositories/times_repository.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
    Get.to(
      () => AddTituloPage(time: widget.time),
    );
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
    final time = Provider.of<TimesRepository>(context)
        .times
        .firstWhere((element) => element.nome == widget.time.nome);
    final quantidade = time.titulo.length;

    return quantidade == 0
        ? Container(
            child: Center(child: Text('Nenhum Título Ainda!')),
          )
        : ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.emoji_events),
                title: Text(time.titulo[index].campeonato),
                trailing: Text(time.titulo[index].ano),
                onTap: () {
                  Get.to(
                    EditTituloPage(titulo: time.titulo[index]),
                    fullscreenDialog: true,
                  );
                },
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: quantidade,
          );
  }
}
