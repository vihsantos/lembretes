import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/presentation/pages/Detalhar.dart';
import '../PaletaDeCores.dart';

class CardLembrete extends StatelessWidget {
  const CardLembrete({
    Key key,
    @required this.lembrete,
  }) : super(key: key);

  final Lembrete lembrete;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Detalhar(lembrete: lembrete)));
      }),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
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
                        lembrete.titulo,
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
                          lembrete.descricao,
                          maxLines: 3,
                          textAlign: TextAlign.justify,
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
                    DateFormat('dd/MM/yyyy').format(lembrete.datal),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: PaletaDeCores.branco),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
