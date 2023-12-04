import 'package:flutter/material.dart';
import 'package:flutter_professor_diego/controllers/theme_controller.dart';
import 'package:flutter_professor_diego/pages/home_controller.dart';
import 'package:flutter_professor_diego/pages/time_page.dart';
import 'package:flutter_professor_diego/repositories/times_repository.dart';
import 'package:flutter_professor_diego/widgets/brasao.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../models/times.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller;
  var themeController = ThemeController.to;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Brasileirão'),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: ListTile(
                    leading: Obx(() => themeController.isDark.value
                      ? Icon(Icons.brightness_7)
                      : Icon(Icons.brightness_2)),
                    title: Obx(() => themeController.isDark.value
                      ? Text('Light')
                      : Text('Dark')),
                    onTap: () => themeController.changeTheme(),
                  )
              ),
            ],
          )
        ],
      ),
      body: Consumer<TimesRepository>(
        builder: (context, repositorio, child) {
          return ListView.separated(
            itemCount: repositorio.times.length,
            itemBuilder: (context, i) {
              final List<Time> tabela = repositorio.times;
              return ListTile(
                leading: Brasao(image: tabela[i].brasao, width: 40),
                title: Text(tabela[i].nome),
                subtitle: Text('Títulos: ${tabela[i].titulo.length}'),
                trailing: Text(tabela[i].pontos.toString()),
                onTap: () {
                  Get.to(
                    () => TimePage(
                      key: Key(tabela[i].nome),
                      time: tabela[i],
                    ),
                  );
                },
              );
            },
            separatorBuilder: (context, index) => Divider(),
            padding: EdgeInsets.all(16),
          );
        },
      ),
    );
  }
}
