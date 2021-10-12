import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lembretes/Paginas/Detalhar/Detalhar.dart';
import 'package:lembretes/Paginas/NovoLembrete/NovoLembrete.dart';
import 'package:lembretes/Paginas/Tudo/Tudo.dart';
import 'package:lembretes/componentes/CardLembrete.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/controllers/LembretesController.dart';
import 'package:lembretes/models/Lembrete.dart';
import 'package:intl/intl.dart';
import 'componentes/IconeHome.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final LembretesController lembretesController =
      Get.put(LembretesController());

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
                          icon: Icons.add,
                          titulo: 'Adicionar',
                          onpress: () {
                            Get.to(NovoLembrete());
                          }),
                      IconeHome(
                          icon: Icons.folder,
                          titulo: 'Lembretes',
                          onpress: () {
                            Get.to(Tudo());
                          }),
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
            Expanded(child: Obx(() {
              if (lembretesController.loading == true) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                  itemCount: lembretesController.lembretes.length > 3
                      ? 3
                      : lembretesController.lembretes.length,
                  itemBuilder: (context, index) {
                    Lembrete l = lembretesController.lembretes[index];
                    return CardLembrete(
                      data: DateFormat('dd/MM/yyyy').format(l.datal),
                      descricao: l.descricao,
                      titulo: l.titulo,
                      press: () {
                        Get.to(Detalhar(detalhar: l));
                      },
                    );
                  });
            }))
          ],
        ));
  }
}
