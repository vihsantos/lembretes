import 'package:flutter/material.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/models/Lembrete.dart';
import 'componentes/CardLembrete.dart';
import 'package:intl/intl.dart';

import 'componentes/IconeHome.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: PaletaDeCores.background,
        appBar: appBar("Home"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                height: size.height * 0.16,
                width: size.width * 0.9,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      IconeHome(
                          icon: Icons.favorite,
                          titulo: 'Favoritos',
                          onpress: () {}),
                      IconeHome(
                          icon: Icons.folder,
                          titulo: 'Minha Pasta',
                          onpress: () {}),
                      IconeHome(
                          icon: Icons.timer, titulo: 'Antigos', onpress: () {})
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Últimos lembretes",
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    Lembrete l = lembretes[index];
                    return CardLembrete(
                      data: DateFormat('dd/MM/yyyy').format(l.data),
                      descricao: l.descricao,
                      titulo: l.titulo,
                    );
                  }),
            ),
          ],
        ));
  }
}
