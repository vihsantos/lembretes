import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class StylesDecoration {
  static BoxDecoration decorationContainer = BoxDecoration(
    color: PaletaDeCores.branco,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
      BoxShadow(
          color: PaletaDeCores.branco.withOpacity(0.2),
          offset: Offset(-4, -4),
          blurRadius: 1),
      BoxShadow(
          color: PaletaDeCores.roxoum.withOpacity(0.2),
          offset: Offset(4, 4),
          blurRadius: 1)
    ],
  );
}
