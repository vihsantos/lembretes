import 'package:flutter/material.dart';
import '../PaletaDeCores.dart';

class CardLembrete extends StatelessWidget {
  const CardLembrete({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: PaletaDeCores.branco,
        borderRadius: BorderRadius.circular(20),
      ),
      width: size.width * 0.98,
      height: size.height * 0.22,
      child: Stack(children: [
        Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Titulo qualquer",
                    style: TextStyle(
                        color: PaletaDeCores.preto,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Container(
                    width: size.width * 0.79,
                    height: size.height * 0.096,
                    child: Text(
                      "titulo qualquer, titulo qualquer, titulo qualquer, titulo qualquer,",
                      maxLines: 3,
                      style: TextStyle(
                          color: PaletaDeCores.preto,
                          fontSize: 16,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            )),
        Align(
          alignment: Alignment.topRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.favorite_outline,
                    color: PaletaDeCores.roxo,
                  )),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.edit,
                    color: PaletaDeCores.roxo,
                  )),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: PaletaDeCores.roxo,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            height: size.height * 0.048,
            width: size.width * 0.98,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 6, bottom: 6),
              child: Text(
                "10/06/2000",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: PaletaDeCores.branco),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
