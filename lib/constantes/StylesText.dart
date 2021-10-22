import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class StylesText {
  static TextStyle tituloAppBarStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: "Gowun Batang",
    fontSize: 32,
    color: PaletaDeCores.preto,
  );

  static TextStyle tituloCardStyle = TextStyle(
    fontFamily: "Gowun Batang",
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: PaletaDeCores.preto,
  );

  static TextStyle descricaoCardStyle = TextStyle(
      color: PaletaDeCores.preto.withOpacity(0.6), fontStyle: FontStyle.italic);

  static TextStyle dataCardStyle = TextStyle(
      color: PaletaDeCores.preto.withOpacity(0.5), fontWeight: FontWeight.bold);

  static TextStyle tituloHomeStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: "Gowun Batang",
    fontSize: 24,
    color: PaletaDeCores.preto,
  );
}
