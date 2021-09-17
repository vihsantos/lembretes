import 'package:flutter/material.dart';
import 'package:lembretes/Paginas/Detalhar/Detalhar.dart';
import 'package:lembretes/componentes/CardLembrete.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/models/Lembrete.dart';
import 'package:intl/intl.dart';

class Tudo extends StatefulWidget {
  const Tudo({Key key}) : super(key: key);

  @override
  _TudoState createState() => _TudoState();
}

class _TudoState extends State<Tudo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Todos Lembretes"),
      backgroundColor: PaletaDeCores.background,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: lembretes.length,
                itemBuilder: (context, index) {
                  Lembrete l = lembretes[index];
                  return CardLembrete(
                    data: DateFormat('dd/MM/yyyy').format(l.data),
                    descricao: l.descricao,
                    titulo: l.titulo,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detalhar(detalhar: l)));
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
