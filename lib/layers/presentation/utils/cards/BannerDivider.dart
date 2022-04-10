import 'package:flutter/material.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

class BannerDivider extends StatelessWidget {
  const BannerDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: PaletaDeCores.preto.withOpacity(0.1),
              offset: Offset(6, 6),
              blurRadius: 10)
        ],
        image: DecorationImage(
            opacity: 0.2,
            fit: BoxFit.cover,
            image: AssetImage("assets/images/background.png")),
        borderRadius: BorderRadius.circular(20),
        color: PaletaDeCores.roxo,
      ),
      width: size.width * 0.95,
      height: size.height * 0.10,
      child: Center(
        child: Text(
          "    Lorem ipsum dolor sit amet, consectetur \n adipiscing elit ut aliquam.",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300,
              color: PaletaDeCores.branco),
        ),
      ),
    );
  }
}
