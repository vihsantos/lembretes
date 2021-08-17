import 'package:flutter/material.dart';
import 'package:lembretes/constantes/PaletaDeCores.dart';

class NovoLembrete extends StatefulWidget {
  const NovoLembrete({Key key}) : super(key: key);

  @override
  _NovoLembreteState createState() => _NovoLembreteState();
}

class _NovoLembreteState extends State<NovoLembrete> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      body: Center(
        child: Container(
          height: size.height * 0.6,
          width: size.width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [PaletaDeCores.roxoum, PaletaDeCores.amareloum])),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Container(
                  width: size.width * 0.6,
                  height: size.height * 0.04,
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Titulo"),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
