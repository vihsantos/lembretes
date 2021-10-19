import 'package:flutter/material.dart';
import 'package:lembretes/componentes/BotaoSalvar.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/constantes/StylesDecoration.dart';
import 'package:lembretes/models/Lembrete.dart';

class Editar extends StatelessWidget {
  const Editar({Key key, @required this.editarLembrete}) : super(key: key);

  final Lembrete editarLembrete;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      appBar: appBar("Editar"),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: size.height * 0.80,
              width: size.width * 0.9,
              decoration: StylesDecoration.decorationCardInputEditar,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Container(
                      width: size.width * 0.7,
                      height: size.height * 0.06,
                      decoration: StylesDecoration.decorationInput,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: TextFormField(
                          initialValue: editarLembrete.titulo,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: PaletaDeCores.branco.withOpacity(0.8)),
                          decoration: InputDecoration(border: InputBorder.none),
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
                      height: size.height * 0.56,
                      decoration: StylesDecoration.decorationInput,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 4, bottom: 4, left: 4, right: 4),
                        child: TextFormField(
                          maxLength: 255,
                          keyboardType: TextInputType.multiline,
                          maxLines: 18,
                          initialValue: editarLembrete.descricao,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: PaletaDeCores.branco.withOpacity(0.8)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: BotaoSalvar(press: () {}))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
