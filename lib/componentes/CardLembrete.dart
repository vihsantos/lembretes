import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/constantes/StylesDecoration.dart';

class CardLembrete extends StatelessWidget {
  const CardLembrete({
    Key key,
    @required this.titulo,
    @required this.descricao,
    @required this.data,
    @required this.press,
  }) : super(key: key);

  final String titulo;
  final String descricao;
  final String data;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
      child: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          width: size.width * 0.9,
          height: size.height * 0.24,
          decoration: StylesDecoration.decorationCardLembrete,
          child: Center(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 15,
                  left: 15,
                  child: Text(titulo,
                      style: TextStyle(
                        fontFamily: "Gowun Batang",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: PaletaDeCores.preto,
                      )),
                ),
                Positioned(
                  top: 60,
                  left: 15,
                  child: Container(
                    // color: PaletaDeCores.branco,
                    width: 245,
                    child: Text(descricao,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: PaletaDeCores.preto.withOpacity(0.6),
                            fontStyle: FontStyle.italic)),
                  ),
                ),
                Positioned(
                    bottom: 15,
                    left: 15,
                    child: Text(
                      data,
                      style: TextStyle(
                          color: PaletaDeCores.preto.withOpacity(0.5),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
