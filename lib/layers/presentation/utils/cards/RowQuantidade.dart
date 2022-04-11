import 'package:flutter/material.dart';

import '../PaletaDeCores.dart';

class RowQuantidade extends StatelessWidget {
  const RowQuantidade({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: PaletaDeCores.preto.withOpacity(0.10),
                      offset: Offset(6, 6),
                      blurRadius: 10)
                ],
                color: PaletaDeCores.branco,
                borderRadius: BorderRadius.circular(20)),
            height: size.height * 0.15,
            width: size.width * 0.48,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "0",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: PaletaDeCores.preto),
              ),
              Text(
                "lembrete",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: PaletaDeCores.preto,
                    fontSize: 18),
              )
            ])),
        SizedBox(width: size.width * 0.06),
        Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: PaletaDeCores.preto.withOpacity(0.10),
                      offset: Offset(6, 6),
                      blurRadius: 10)
                ],
                color: PaletaDeCores.branco,
                borderRadius: BorderRadius.circular(20)),
            height: size.height * 0.15,
            width: size.width * 0.40,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "0",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: PaletaDeCores.preto),
              ),
              Text(
                "favoritos",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: PaletaDeCores.preto,
                    fontSize: 18),
              )
            ])),
      ],
    );
  }
}
