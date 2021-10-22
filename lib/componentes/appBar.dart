import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/constantes/StylesText.dart';

AppBar appBar(String title) {
  return AppBar(
    backgroundColor: PaletaDeCores.background,
    elevation: 0,
    centerTitle: true,
    title: Text(title, style: StylesText.tituloAppBarStyle),
  );
}
