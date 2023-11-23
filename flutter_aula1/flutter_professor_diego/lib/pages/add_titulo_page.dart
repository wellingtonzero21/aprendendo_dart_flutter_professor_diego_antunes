import 'package:flutter/material.dart';
import 'package:flutter_professor_diego/models/times.dart';
import 'package:flutter_professor_diego/models/titulo.dart';
import 'package:flutter_professor_diego/repositories/times_repository.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AddTituloPage extends StatefulWidget {
  Time time;

  AddTituloPage({super.key, required this.time});

  @override
  State<AddTituloPage> createState() => _AddTituloPageState();
}

class _AddTituloPageState extends State<AddTituloPage> {
  final _campeonato = TextEditingController();
  final _ano = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  save() {
    Provider.of<TimesRepository>(context, listen: false).addTitulo(
      time: widget.time,
      titulo: Titulo(campeonato: _campeonato.text, ano: _ano.text),
    );

    Get.back();

    Get.snackbar(
      'Sucesso!',
      'Título cadastrado!',
      backgroundColor: Colors.grey[900],
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
    );
  }

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
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(24),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          save();
                        }
                      },
                      child: const Text(
                        'Salvar',
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ))
            ],
          )),
    );
  }
}
