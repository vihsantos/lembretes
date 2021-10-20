import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lembretes/Paginas/Detalhar/Detalhar.dart';
import 'package:lembretes/componentes/CardLembrete.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:intl/intl.dart';
import 'package:lembretes/controllers/LembretesController.dart';
import 'package:lembretes/models/Lembrete.dart';

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
              child: GetBuilder<LembretesController>(
                  init: LembretesController(),
                  builder: (controller) {
                    if (controller.loading == true) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return ListView.builder(
                        itemCount: controller.lembretes.length,
                        itemBuilder: (context, index) {
                          Lembrete l = controller.lembretes[index];
                          return CardLembrete(
                            data: DateFormat('dd/MM/yyyy').format(l.datal),
                            descricao: l.descricao,
                            titulo: l.titulo,
                            press: () {
                              Get.to(() => Detalhar(detalhar: l));
                            },
                          );
                        });
                  }))
        ],
      ),
    );
  }
}
