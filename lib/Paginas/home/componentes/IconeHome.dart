import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';
import 'package:lembretes/constantes/StylesDecoration.dart';

class IconeHome extends StatelessWidget {
  const IconeHome({
    Key key,
    @required this.icon,
    @required this.titulo,
    @required this.onpress,
  }) : super(key: key);

  final IconData icon;
  final String titulo;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: size.height * 0.15,
          width: size.width * 0.3,
          decoration: StylesDecoration.decorationContainer,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 15,
                left: 16,
                right: 16,
                child: Icon(
                  icon,
                  size: 60,
                  color: PaletaDeCores.azultres,
                ),
              ),
              Positioned(
                bottom: 15,
                left: 20,
                right: 20,
                child: Center(
                  child: Text(
                    titulo,
                    style: TextStyle(
                        color: PaletaDeCores.azultres,
                        fontFamily: "Gonwun Batang",
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
