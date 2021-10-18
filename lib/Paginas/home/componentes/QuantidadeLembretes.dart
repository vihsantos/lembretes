import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/constantes/StylesDecoration.dart';

class QuantidadeLembretes extends StatelessWidget {
  const QuantidadeLembretes({
    Key key,
    @required this.valor,
  }) : super(key: key);

  final int valor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.9,
        height: size.height * 0.35,
        decoration: StylesDecoration.decorationContainer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("TOTAL DE: ",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Gowun Batang",
                  color: PaletaDeCores.azultres,
                )),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 140,
                  height: 140,
                  decoration: valor == 0
                      ? StylesDecoration.decorationCircleQuantVazio
                      : StylesDecoration.decorationCircleQuant,
                  child: Center(
                    child: Text(
                      "$valor",
                      style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: PaletaDeCores.azultres),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "LEMBRETES",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Gowun Batang",
                    fontWeight: FontWeight.w900,
                    color: PaletaDeCores.azultres,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
