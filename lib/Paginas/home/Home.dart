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
import 'componentes/IconeHome.dart';
import 'package:intl/intl.dart';

import 'componentes/QuantidadeLembretes.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LembretesController ultimo = Get.put(LembretesController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: PaletaDeCores.background,
        appBar: appBar("Home"),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Container(
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
                              Get.to(() => NovoLembrete());
                            }),
                        IconeHome(
                            icon: Icons.folder,
                            titulo: 'Lembretes',
                            onpress: () {
                              Get.to(() => Tudo());
                            }),
                        IconeHome(
                            icon: Icons.info_outline,
                            titulo: 'Sobre',
                            onpress: () {})
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Que bom te ver de volta!",
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gowun Batang",
                    fontSize: 24,
                    color: PaletaDeCores.preto,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Obx(() {
                  if (ultimo.loading == true) {
                    return QuantidadeLembretes(valor: 0);
                  }
                  return QuantidadeLembretes(valor: ultimo.lembretes.length);
                }),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lembrete mais recente",
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gowun Batang",
                    fontSize: 24,
                    color: PaletaDeCores.preto,
                  ),
                ),
                Obx(() {
                  if (ultimo.loading == true) {
                    return Center(child: CircularProgressIndicator());
                  }
                  Lembrete ult = ultimo.lembretes.last;
                  return CardLembrete(
                      titulo: ult.titulo,
                      descricao: ult.descricao,
                      data: DateFormat('dd/MM/yyyy').format(ult.datal),
                      press: () {
                        Get.to(() => Detalhar(detalhar: ult));
                      });
                })
              ],
            ),
          ),
        ));
  }
}
