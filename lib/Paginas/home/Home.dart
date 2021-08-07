import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/models/Lembrete.dart';
import 'componentes/CardLembrete.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PaletaDeCores.preto,
        appBar: AppBar(
          backgroundColor: PaletaDeCores.preto,
          elevation: 0,
          centerTitle: true,
          title: Text("Lembretes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Gowun Batang",
                fontSize: 32,
                color: PaletaDeCores.branco,
              )),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: lembretes.length,
              itemBuilder: (context, index) {
                Lembrete l = lembretes[index];
                return CardLembrete(
                  data: DateFormat('dd/MM/yyyy').format(l.data),
                  descricao: l.descricao,
                  titulo: l.titulo,
                );
              }),
        ));
  }
}
