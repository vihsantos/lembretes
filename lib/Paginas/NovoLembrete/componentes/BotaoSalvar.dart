import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class BotaoSalvar extends StatelessWidget {
  const BotaoSalvar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: PaletaDeCores.amareloum,
                fontFamily: "Gowun Batang",
                fontSize: 18),
            primary: PaletaDeCores.roxoum,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            minimumSize: Size(100, 45)),
        onPressed: () {},
        child: Text("Salvar"));
  }
}