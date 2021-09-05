import 'package:flutter/material.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class MinhaPasta extends StatefulWidget {
  const MinhaPasta({Key key}) : super(key: key);

  @override
  _MinhaPastaState createState() => _MinhaPastaState();
}

class _MinhaPastaState extends State<MinhaPasta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      appBar: appBar("Minha Pasta"),
    );
  }
}
