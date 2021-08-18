import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

AppBar appBar(String title) {
  return AppBar(
    backgroundColor: PaletaDeCores.background,
    elevation: 0,
    centerTitle: true,
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "Gowun Batang",
          fontSize: 32,
          color: PaletaDeCores.preto,
        )),
  );
}
