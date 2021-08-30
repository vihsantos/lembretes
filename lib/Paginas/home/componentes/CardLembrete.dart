import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class CardLembrete extends StatelessWidget {
  const CardLembrete({
    Key key,
    @required this.titulo,
    @required this.descricao,
    @required this.data,
  }) : super(key: key);

  final String titulo;
  final String descricao;
  final String data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        width: size.width * 0.9,
        height: size.height * 0.24,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(3, 3),
                blurRadius: 3,
                color: PaletaDeCores.roxoum.withOpacity(0.6),
              ),
              BoxShadow(
                offset: Offset(-3, -3),
                blurRadius: 3,
                color: PaletaDeCores.amareloum.withOpacity(0.6),
              )
            ],
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [PaletaDeCores.roxoum, PaletaDeCores.amareloum])),
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 40,
                  right: 15,
                  child: IconButton(
                      icon: Icon(Icons.favorite_border), onPressed: () {})),
              Positioned(
                  top: 90,
                  right: 15,
                  child:
                      IconButton(icon: Icon(Icons.folder), onPressed: () {})),
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
                right: 15,
                child: SizedBox(
                  width: 340,
                  child: Text(descricao,
                      style: TextStyle(
                          color: PaletaDeCores.branco,
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
    );
  }
}
