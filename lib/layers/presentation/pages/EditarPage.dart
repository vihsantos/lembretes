import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/presentation/controller/editar_lembrete_controller.dart';
import 'package:lembretes/layers/presentation/pages/MainPage.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

import '../../data/dto/lembrete_dto.dart';

class EditarPage extends StatefulWidget {
  final Lembrete lembrete;

  const EditarPage({Key? key, required this.lembrete});

  @override
  State<EditarPage> createState() => _EditarPageState();
}

class _EditarPageState extends State<EditarPage> {
  final EditarLembreteController editarLembreteController =
      GetIt.I.get<EditarLembreteController>();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController tituloController =
        TextEditingController(text: widget.lembrete.titulo);
    TextEditingController descricaoController =
        TextEditingController(text: widget.lembrete.descricao);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_rounded,
                  color: PaletaDeCores.roxo, size: 28))
        ],
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Editar lembrete".toUpperCase(),
          style: TextStyle(
              fontSize: 22,
              color: PaletaDeCores.roxo,
              fontWeight: FontWeight.w900),
        ),
      ),
      backgroundColor: PaletaDeCores.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(),
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
                          hintText: tituloController.text),
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
                          hintText: descricaoController.text),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: PaletaDeCores.roxo,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () async {
                        DateTime? data = DateTime.now();

                        LembreteDto editado = new LembreteDto(
                          titulo: tituloController.text,
                          descricao: descricaoController.text,
                          datal: data,
                          favorito: false,
                        );

                        await editarLembreteController.editarLembrete(
                            widget.lembrete.id!, editado);

                        tituloController.clear();
                        descricaoController.clear();
                        data = null;

                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()),
                            (route) => false);
                      },
                      child: Text("Salvar",
                          style: TextStyle(
                              color: PaletaDeCores.branco, fontSize: 16)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
