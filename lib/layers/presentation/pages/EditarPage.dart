import 'package:flutter/material.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

class EditarPage extends StatefulWidget {
  EditarPage({Key? key, required this.lembrete}) : super(key: key);

  final Lembrete lembrete;

  @override
  State<EditarPage> createState() => _EditarPageState();
}

class _EditarPageState extends State<EditarPage> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController tituloController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                ],
              ))),
        ),
      ),
    );
  }
}
