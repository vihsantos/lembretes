import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'Paginas/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lembretes',
      theme: ThemeData(
        primaryColor: PaletaDeCores.amareloum,
      ),
      home: Home(),
    );
  }
}
