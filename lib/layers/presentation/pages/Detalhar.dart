import 'package:flutter/material.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:intl/intl.dart';
import '../utils/PaletaDeCores.dart';

class Detalhar extends StatefulWidget {
  const Detalhar({Key key, @required this.lembrete}) : super(key: key);

  final Lembrete lembrete;
  @override
  State<Detalhar> createState() => _DetalharState();
}

class _DetalharState extends State<Detalhar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_rounded,
                  color: PaletaDeCores.roxo, size: 28))
        ],
        title: Text(
          widget.lembrete.titulo.toUpperCase(),
          style: TextStyle(
              fontSize: 22,
              color: PaletaDeCores.roxo,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat('dd/MM/yyyy').format(widget.lembrete.datal),
                style: TextStyle(
                    color: PaletaDeCores.preto,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontStyle: FontStyle.italic),
              ),
              TextButton(
                  onPressed: null,
                  child: Text(
                    "Editar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontStyle: FontStyle.italic),
                  ))
            ],
          ),
          Container(
            width: size.width * 0.98,
            child: Text(
              widget.lembrete.descricao,
              textAlign: TextAlign.justify,
            ),
          )
        ]),
      ),
    );
  }
}
