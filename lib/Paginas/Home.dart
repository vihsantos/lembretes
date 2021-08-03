import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Lembretes",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Gowun Batang",
                fontSize: 32,
                color: PaletaDeCores.branco),
          )),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              PaletaDeCores.roxoum,
              PaletaDeCores.amareloum,
            ])),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
