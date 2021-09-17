import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class CirculoIcone extends StatelessWidget {
  const CirculoIcone({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                PaletaDeCores.roxoum,
                PaletaDeCores.roxodois,
              ]),
          borderRadius: BorderRadius.circular(25),
        ),
        child: child);
  }
}
