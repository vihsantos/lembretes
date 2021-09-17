import 'package:flutter/material.dart';
import 'package:lembretes/Paginas/home/Home.dart';
import 'package:lembretes/componentes/IconeAddLista.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/models/Lembrete.dart';

import 'componentes/BotaoSalvar.dart';
import 'componentes/CirculoIcone.dart';

class NovoLembrete extends StatefulWidget {
  const NovoLembrete({Key key}) : super(key: key);

  @override
  _NovoLembreteState createState() => _NovoLembreteState();
}

class _NovoLembreteState extends State<NovoLembrete> {
  bool iconefavorito = false;
  bool iconepasta = false;

  final tituloController = TextEditingController();
  final descricaoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar("Novo Lembrete"),
      backgroundColor: PaletaDeCores.background,
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: size.height * 0.52,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomCenter,
                      colors: [PaletaDeCores.rosaum, PaletaDeCores.azulum])),
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Container(
                          width: size.width * 0.7,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                              color: PaletaDeCores.branco.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 4, left: 4),
                            child: TextFormField(
                              controller: tituloController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Titulo",
                                  hintStyle: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: PaletaDeCores.branco
                                          .withOpacity(0.8))),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          width: size.width * 0.85,
                          height: size.height * 0.3,
                          decoration: BoxDecoration(
                              color: PaletaDeCores.branco.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 4, bottom: 4, left: 4),
                            child: TextFormField(
                              controller: descricaoController,
                              keyboardType: TextInputType.multiline,
                              maxLines: 10,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Escreva aqui seu lembrete...",
                                  hintStyle: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: PaletaDeCores.branco
                                          .withOpacity(0.8))),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CirculoIcone(
                                    child: IconAddLista(
                                  iconeNaoSelecionado: Icons.favorite_border,
                                  iconeSelecionado: Icons.favorite,
                                  onpressed: () {
                                    setState(() {
                                      iconefavorito == true
                                          ? iconefavorito = false
                                          : iconefavorito = true;
                                    });
                                  },
                                  selecionado: iconefavorito,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                CirculoIcone(
                                  child: IconAddLista(
                                    iconeNaoSelecionado: Icons.folder_open,
                                    iconeSelecionado: Icons.folder,
                                    onpressed: () {
                                      setState(() {
                                        iconepasta == true
                                            ? iconepasta = false
                                            : iconepasta = true;
                                      });
                                    },
                                    selecionado: iconepasta,
                                  ),
                                ),
                              ],
                            ),
                            BotaoSalvar(
                              press: () {
                                int valor = lembretes.length + 1;
                                DateTime data = DateTime.now();

                                Lembrete novo = new Lembrete(
                                    id: valor,
                                    titulo: tituloController.text,
                                    descricao: descricaoController.text,
                                    data: data);

                                novo.addLembrete(novo);

                                tituloController.clear();
                                descricaoController.clear();
                                valor = 0;
                                data = null;

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
