import 'package:flutter/material.dart';
import 'package:flutter_professor_diego/models/times.dart';
import 'package:flutter_professor_diego/models/titulo.dart';

// ignore: must_be_immutable
class AddTituloPage extends StatefulWidget {
  Time time;
  ValueChanged<Titulo> onSave;

  AddTituloPage({super.key, required this.time, required this.onSave});

  @override
  State<AddTituloPage> createState() => _AddTituloPageState();
}

class _AddTituloPageState extends State<AddTituloPage> {
  final _campeonato = TextEditingController();
  final _ano = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Título'),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(24),
                child: TextFormField(
                  controller: _ano,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Ano",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Informe o ano do título";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: TextFormField(
                  controller: _campeonato,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Campeonato",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Informe qual é o campeonato!";
                    }
                    return null;
                  },
                ),
              )
            ],
          )),
    );
  }
}
