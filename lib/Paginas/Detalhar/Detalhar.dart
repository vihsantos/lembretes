import 'package:flutter/material.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/models/Lembrete.dart';

class Detalhar extends StatelessWidget {
  final Lembrete detalhar;
  const Detalhar({@required this.detalhar, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      appBar: appBar("${detalhar.titulo}"),
    );
  }
}
