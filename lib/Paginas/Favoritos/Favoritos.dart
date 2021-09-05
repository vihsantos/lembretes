import 'package:flutter/material.dart';
import 'package:lembretes/componentes/appBar.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({Key key}) : super(key: key);

  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      appBar: appBar("Favoritos"),
    );
  }
}
