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

  static BoxDecoration decorationCardLembrete = BoxDecoration(
      boxShadow: [
        BoxShadow(
          offset: Offset(3, 3),
          blurRadius: 3,
          color: PaletaDeCores.roxoum.withOpacity(0.6),
        ),
        BoxShadow(
          offset: Offset(-3, -3),
          blurRadius: 3,
          color: PaletaDeCores.amareloum.withOpacity(0.6),
        )
      ],
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: [PaletaDeCores.azulum, PaletaDeCores.azuldois]));

  static BoxDecoration decorationCardInput = BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomCenter,
          colors: [PaletaDeCores.roxoum, PaletaDeCores.roxodois]));

  static BoxDecoration decorationInput = BoxDecoration(
      color: PaletaDeCores.branco.withOpacity(0.1),
      borderRadius: BorderRadius.circular(25));
}
