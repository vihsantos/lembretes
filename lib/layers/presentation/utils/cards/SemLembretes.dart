import 'package:flutter/material.dart';

import '../PaletaDeCores.dart';

class SemLembretes extends StatelessWidget {
  const SemLembretes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.not_interested,
              size: 72,
              color: PaletaDeCores.preto,
            ),
            Text(
              "Sem lembretes para exibir!",
              style: TextStyle(
                  fontSize: 18,
                  color: PaletaDeCores.preto,
                  fontWeight: FontWeight.w500),
            )
          ]),
    ));
  }
}
