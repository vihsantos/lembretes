import 'package:flutter/material.dart';
import 'package:lembretes/layers/inject/Inject.dart';
import 'package:lembretes/layers/presentation/pages/MainPage.dart';

void main() {
  Inject.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lembretes",
      theme: ThemeData(fontFamily: 'Gowun Batang'),
      home: MainPage(),
    );
  }
}
