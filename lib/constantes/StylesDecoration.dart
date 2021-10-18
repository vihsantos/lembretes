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

  static BoxDecoration decorationCardLembreteVazio = BoxDecoration(
      boxShadow: [
        BoxShadow(
          offset: Offset(3, 3),
          blurRadius: 3,
          color: PaletaDeCores.rosaum.withOpacity(0.2),
        ),
        BoxShadow(
          offset: Offset(-3, -3),
          blurRadius: 3,
          color: PaletaDeCores.azuldois.withOpacity(0.2),
        )
      ],
      borderRadius: BorderRadius.circular(30),
      gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: [
            PaletaDeCores.background,
            PaletaDeCores.branco,
          ]));

  static BoxDecoration decorationCircleQuantVazio = BoxDecoration(
      color: PaletaDeCores.background,
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
            color: PaletaDeCores.preto.withOpacity(0.2),
            offset: Offset(2, 2),
            blurRadius: 3),
      ]);

  static BoxDecoration decorationCircleQuant = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomCenter,
          colors: [PaletaDeCores.azulum, PaletaDeCores.azuldois]),
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
            color: PaletaDeCores.preto.withOpacity(0.2),
            offset: Offset(2, 2),
            blurRadius: 3),
      ]);

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
