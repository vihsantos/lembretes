import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/constantes/StylesDecoration.dart';

class CardLembreteVazio extends StatelessWidget {
  const CardLembreteVazio({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        width: size.width * 0.9,
        height: size.height * 0.24,
        decoration: StylesDecoration.decorationCardLembreteVazio,
        child: Center(
            child: Text('Nenhum lembrete encontrado',
                style: TextStyle(
                  fontFamily: "Gowun Batang",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: PaletaDeCores.preto,
                ))),
      ),
    );
  }
}
