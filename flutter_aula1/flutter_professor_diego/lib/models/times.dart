import 'package:flutter/material.dart';

import 'titulo.dart';

class Time {
  String nome;
  String brasao;
  int pontos;
  Color cor;

  List<Titulo> titulo = [];
  
  Time({required this.nome, required this.brasao, required this.pontos, required this.cor});
}