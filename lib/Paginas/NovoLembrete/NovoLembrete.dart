import 'package:flutter/material.dart';
import 'package:lembretes/componentes/appBar.dart';
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
      appBar: appBar("Novo Lembrete"),
      backgroundColor: PaletaDeCores.background,
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: size.height * 0.52,
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
                      width: size.width * 0.7,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                          color: PaletaDeCores.branco.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 4, bottom: 4, left: 4),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Titulo"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: size.width * 0.85,
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                          color: PaletaDeCores.branco.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 4, bottom: 4, left: 4),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 10,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Escreva aqui seu lembrete..."),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: PaletaDeCores.amareloum,
                                fontFamily: "Gowun Batang",
                                fontSize: 18),
                            primary: PaletaDeCores.roxoum,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            minimumSize: Size(100, 45)),
                        onPressed: () {},
                        child: Text("Salvar")),
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
