import 'package:flutter/material.dart';
import 'package:lembretes/layers/presentation/pages/CriarLembrete.dart';
import 'package:lembretes/layers/presentation/pages/Home.dart';
import 'package:lembretes/layers/presentation/pages/TodosLembretes.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final paginas = [
    Home(),
    CriarLembrete(),
    TodosLembretes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        backgroundColor: PaletaDeCores.branco,
        selectedItemColor: PaletaDeCores.roxo,
        unselectedItemColor: PaletaDeCores.preto,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Criar"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listar"),
        ],
      ),
      body: paginas[currentIndex],
    );
  }
}
