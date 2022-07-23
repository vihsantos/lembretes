import 'package:flutter/material.dart';
import 'package:lembretes/layers/data/datasources/remote/lembretes_datasource_imp.dart';
import 'package:lembretes/layers/data/dto/lembrete_dto.dart';
import 'package:lembretes/layers/data/repositories/LembreteRepositoryImp.dart';
import 'package:lembretes/layers/domain/usecases/PostLembrete/post_lembretes_usecase_imp.dart';
import 'package:lembretes/layers/presentation/controller/criar_lembrete_controller.dart';
import 'package:lembretes/layers/presentation/pages/MainPage.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

class CriarLembrete extends StatefulWidget {
  const CriarLembrete({Key key}) : super(key: key);

  @override
  State<CriarLembrete> createState() => _CriarLembreteState();
}

class _CriarLembreteState extends State<CriarLembrete> {
  CriarLembreteController _controller = new CriarLembreteController(
      PostLembreteUseCaseImp(LembreteRepositoryImp(LembretesDataSourceImp())));
  TextEditingController tituloController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      onPressed: () async {
                        DateTime data = DateTime.now();

                        LembreteDto novo = new LembreteDto(
                          titulo: tituloController.text,
                          descricao: descricaoController.text,
                          datal: data,
                          favorito: false,
                        );

                        await _controller.postLembreteUseCase(novo);

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
