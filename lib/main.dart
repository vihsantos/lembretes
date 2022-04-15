import 'package:flutter/material.dart';
import 'package:lembretes/layers/presentation/pages/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lembretes",
      home: MainPage(),
    );
  }
}
