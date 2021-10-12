// import 'package:flutter/material.dart';
// import 'package:lembretes/Paginas/NovoLembrete/NovoLembrete.dart';
// import 'package:lembretes/Paginas/Tudo/Tudo.dart';
// import 'package:lembretes/Paginas/home/Home.dart';
// import 'package:lembretes/constantes/PaletaDeCores.dart';

// class PagesBottom extends StatefulWidget {
//   const PagesBottom({Key key}) : super(key: key);

//   @override
//   _PagesBottomState createState() => _PagesBottomState();
// }

// class _PagesBottomState extends State<PagesBottom> {
//   int pageIndex = 1;
//   PageController pgController;

//   void troca(int index) {
//     trocaIndex(index);
//   }

//   void trocaIndex(int index) {
//     setState(() {
//       pageIndex = index;
//       animatePage(index);
//     });
//   }

//   void animatePage(int index) {
//     pgController.animateToPage(index,
//         duration: Duration(milliseconds: 15), curve: Curves.decelerate);
//   }

//   @override
//   void initState() {
//     super.initState();
//     pgController = PageController(initialPage: 1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         onPageChanged: (index) {
//           setState(() {
//             pageIndex = index;
//           });
//         },
//         controller: pgController,
//         children: [Tudo(), Home(), NovoLembrete()],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: pageIndex,
//         onTap: troca,
//         backgroundColor: PaletaDeCores.roxoum,
//         selectedItemColor: PaletaDeCores.amareloum,
//         unselectedItemColor: PaletaDeCores.background,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.list), label: "Tudo"),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.add_circle_rounded), label: "Novo Lembrete"),
//         ],
//       ),
//     );
//   }
// }
