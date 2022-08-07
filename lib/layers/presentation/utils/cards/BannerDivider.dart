import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

class BannerDivider extends StatefulWidget {
  BannerDivider({
    Key? key,
  }) : super(key: key);

  @override
  State<BannerDivider> createState() => _BannerDividerState();
}

class _BannerDividerState extends State<BannerDivider> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Random random = new Random();
    int randomNumber = random.nextInt(5);
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
          frases.elementAt(randomNumber),
          textAlign: TextAlign.center,
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300,
              color: PaletaDeCores.branco),
        ),
      ),
    );
  }

  List<String> frases = [
    "Tenha coragem para se tornar aquilo que sonha.",
    "Aceite que seu corpo precisa de descanso para recuperar energias! Não se exija em excesso.",
    "Não permita que suas metas tornem-se um peso nas suas costas. Você é quem as cria e quem tem o poder de mudá-las, não se esqueça.",
    "O insucesso é apenas uma oportunidade para recomeçar com mais inteligência.",
    "⁠A motivação é uma porta que se abre por dentro."
  ];
}
