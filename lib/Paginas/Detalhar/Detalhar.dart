import 'package:flutter/material.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/models/Lembrete.dart';
import 'package:intl/intl.dart';

class Detalhar extends StatelessWidget {
  final Lembrete detalhar;
  const Detalhar({@required this.detalhar, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PaletaDeCores.background,
        appBar: appBar("Detalhes"),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(detalhar.titulo,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gowun Batang",
                          fontSize: 30,
                          color: PaletaDeCores.roxoum,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      DateFormat('dd/MM/yyyy').format(detalhar.data),
                      style:
                          TextStyle(fontSize: 12, color: PaletaDeCores.azulum),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Text("${detalhar.descricao}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: "Gowun Batang",
                      fontSize: 20,
                      color: PaletaDeCores.roxoum,
                    )),
              )
            ],
          ),
        ));
  }
}
