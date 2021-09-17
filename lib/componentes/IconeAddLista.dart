import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class IconAddLista extends StatelessWidget {
  const IconAddLista({
    @required this.selecionado,
    @required this.iconeSelecionado,
    @required this.iconeNaoSelecionado,
    @required this.onpressed,
    Key key,
  }) : super(key: key);

  final bool selecionado;
  final IconData iconeSelecionado;
  final IconData iconeNaoSelecionado;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: selecionado == true
            ? Icon(
                iconeSelecionado,
                color: PaletaDeCores.rosaum,
              )
            : Icon(
                iconeNaoSelecionado,
                color: PaletaDeCores.branco,
              ),
        onPressed: onpressed);
  }
}
