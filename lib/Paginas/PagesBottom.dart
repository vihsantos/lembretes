import 'package:flutter/material.dart';
import 'package:lembretes/Paginas/NovoLembrete/NovoLembrete.dart';
import 'package:lembretes/Paginas/Tudo/Tudo.dart';
import 'package:lembretes/Paginas/home/Home.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class PagesBottom extends StatefulWidget {
  const PagesBottom({Key key}) : super(key: key);

  @override
  _PagesBottomState createState() => _PagesBottomState();
}

class _PagesBottomState extends State<PagesBottom> {
  int pageIndex = 0;
  PageController pgController;

  void troca(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    pgController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: troca,
        controller: pgController,
        children: [Tudo(), Home(), NovoLembrete()],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
        child: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: troca,
          backgroundColor: PaletaDeCores.preto,
          selectedItemColor: PaletaDeCores.roxoum,
          unselectedItemColor: PaletaDeCores.branco,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Tudo"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_rounded), label: "Novo Lembrete"),
          ],
        ),
      ),
    );
  }
}
