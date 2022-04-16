import 'package:flutter/material.dart';
import 'package:lembretes/layers/presentation/pages/MainPage.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

import '../../domain/entities/lembrete.dart';

class CriarLembrete extends StatefulWidget {
  const CriarLembrete({Key key}) : super(key: key);

  @override
  State<CriarLembrete> createState() => _CriarLembreteState();
}

class _CriarLembreteState extends State<CriarLembrete> {
  TextEditingController tituloController;
  TextEditingController descricaoController;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Criar novo lembrete".toUpperCase(),
          style: TextStyle(
              fontSize: 22,
              color: PaletaDeCores.roxo,
              fontWeight: FontWeight.w900),
        ),
      ),
      backgroundColor: PaletaDeCores.background,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5),
                width: size.width * 0.98,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: PaletaDeCores.roxo.withOpacity(0.3)),
                child: TextFormField(
                  controller: tituloController,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Insira um titulo"),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                padding: EdgeInsets.only(left: 5, bottom: 5, right: 5),
                width: size.width * 0.98,
                // height: size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: PaletaDeCores.roxo.withOpacity(0.3)),
                child: TextFormField(
                  controller: descricaoController,
                  maxLength: 255,
                  maxLines: 10,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Insira a descrição do seu lembrete"),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: PaletaDeCores.roxo,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    // DateTime data = DateTime.now();

                    // Lembrete novo = new Lembrete(
                    //   titulo: tituloController.text,
                    //   descricao: descricaoController.text,
                    //   datal: data,
                    //   favorito: false,
                    // );

                    // tituloController.clear();
                    // descricaoController.clear();
                    // data = null;

                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()),
                        (route) => false);
                  },
                  child: Text("Salvar",
                      style:
                          TextStyle(color: PaletaDeCores.branco, fontSize: 16)))
            ],
          ),
        ),
      ),
    );
  }
}
