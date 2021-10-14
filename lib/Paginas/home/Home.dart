import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lembretes/Paginas/NovoLembrete/NovoLembrete.dart';
import 'package:lembretes/Paginas/Tudo/Tudo.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/constantes/StylesDecoration.dart';
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
        body: Center(
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
                            Get.to(NovoLembrete());
                          }),
                      IconeHome(
                          icon: Icons.folder,
                          titulo: 'Lembretes',
                          onpress: () {
                            Get.to(Tudo());
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
              Container(
                  width: size.width * 0.9,
                  height: size.height * 0.4,
                  decoration: StylesDecoration.decorationContainer,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("TOTAL DE: ",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Gowun Batang",
                            color: PaletaDeCores.azultres,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                                color: PaletaDeCores.background,
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          PaletaDeCores.preto.withOpacity(0.2),
                                      offset: Offset(2, 2),
                                      blurRadius: 3),
                                ]),
                            child: Center(
                              child: Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: PaletaDeCores.azultres),
                              ),
                            ),
                          ),
                          Text(
                            "LEMBRETES",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "Gowun Batang",
                              fontWeight: FontWeight.w900,
                              color: PaletaDeCores.azultres,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.21,
                decoration: StylesDecoration.decorationContainer,
              )
            ],
          ),
        ));
  }
}
