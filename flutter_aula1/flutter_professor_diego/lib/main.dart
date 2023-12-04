import 'package:flutter/material.dart';
import 'package:flutter_professor_diego/controllers/theme_controller.dart';
import 'package:flutter_professor_diego/repositories/times_repository.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  Get.lazyPut<ThemeController>(() => ThemeController());

  runApp(
    ChangeNotifierProvider(create: (context) => TimesRepository(),
    child: const MyApp()),
    );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ThemeController.to.loadThemeMode();
    return GetMaterialApp(
      title: 'Brasileirão',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,    
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.grey,
        dividerColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Colors.green[500])),
      ),
      home: HomePage(),
    );
  }
}
