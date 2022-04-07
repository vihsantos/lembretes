import 'package:flutter/material.dart';
import 'package:lembretes/layers/data/datasources/remote/get_lembretes_datasource_imp.dart';
import 'package:lembretes/layers/data/repositories/LembreteRepositoryImp.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase_imp.dart';
import 'package:lembretes/layers/presentation/controller/LembreteController.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

import '../utils/cards/Cardlembrete.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LembreteController _controller = LembreteController(GetLembreteUseCaseImp(
      LembreteRepositoryImp(GetLembretesDataSourceImp())));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: PaletaDeCores.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Home Page".toUpperCase(),
            style: TextStyle(
                fontSize: 22,
                color: PaletaDeCores.roxo,
                fontWeight: FontWeight.w900),
          ),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.favorite,
                  color: PaletaDeCores.roxo,
                  size: 28,
                )),
            IconButton(
                onPressed: null,
                icon:
                    Icon(Icons.settings, color: PaletaDeCores.roxo, size: 28)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: PaletaDeCores.branco,
          selectedItemColor: PaletaDeCores.roxo,
          unselectedItemColor: PaletaDeCores.preto,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Criar"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listar"),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: PaletaDeCores.preto.withOpacity(0.10),
                                offset: Offset(6, 6),
                                blurRadius: 10)
                          ],
                          color: PaletaDeCores.branco,
                          borderRadius: BorderRadius.circular(20)),
                      height: size.height * 0.15,
                      width: size.width * 0.48,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: PaletaDeCores.preto),
                            ),
                            Text(
                              "lembrete",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: PaletaDeCores.preto,
                                  fontSize: 18),
                            )
                          ])),
                  SizedBox(width: size.width * 0.06),
                  Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: PaletaDeCores.preto.withOpacity(0.10),
                                offset: Offset(6, 6),
                                blurRadius: 10)
                          ],
                          color: PaletaDeCores.branco,
                          borderRadius: BorderRadius.circular(20)),
                      height: size.height * 0.15,
                      width: size.width * 0.40,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: PaletaDeCores.preto),
                            ),
                            Text(
                              "favoritos",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: PaletaDeCores.preto,
                                  fontSize: 18),
                            )
                          ])),
                ],
              ),
              SizedBox(height: size.height * 0.025),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: PaletaDeCores.preto.withOpacity(0.1),
                        offset: Offset(6, 6),
                        blurRadius: 10)
                  ],
                  image: DecorationImage(
                      opacity: 0.2,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/background.png")),
                  borderRadius: BorderRadius.circular(20),
                  color: PaletaDeCores.roxo.withOpacity(0.8),
                ),
                width: size.width * 0.95,
                height: size.height * 0.10,
                child: Center(
                  child: Text(
                    "    Lorem ipsum dolor sit amet, consectetur \n adipiscing elit ut aliquam.",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300,
                        color: PaletaDeCores.branco),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.025),
              Text(
                "Lembretes recentes:",
                style: TextStyle(
                    color: PaletaDeCores.preto,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: size.height * 0.025),
              CardLembrete(),
              SizedBox(height: size.height * 0.025),
              Container(
                  child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.not_interested,
                        size: 72,
                        color: PaletaDeCores.preto,
                      ),
                      Text(
                        "Não existe mais lembretes!",
                        style: TextStyle(
                            fontSize: 18,
                            color: PaletaDeCores.preto,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
              ))
            ],
          ),
        ));
  }
}
