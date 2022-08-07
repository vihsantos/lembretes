import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lembretes/layers/data/dto/lembrete_dto.dart';
import 'package:lembretes/layers/presentation/controller/lembretes_controller.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';
import 'package:lembretes/layers/presentation/utils/cards/SemLembretes.dart';
import 'package:lembretes/layers/presentation/utils/cards/card_lembrete.dart';

class TodosLembretes extends StatefulWidget {
  const TodosLembretes({Key? key}) : super(key: key);

  @override
  State<TodosLembretes> createState() => _TodosLembretesState();
}

class _TodosLembretesState extends State<TodosLembretes> {
  LembretesController controller = GetIt.I.get<LembretesController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Todos Lembretes".toUpperCase(),
          style: TextStyle(
              fontSize: 22,
              color: PaletaDeCores.roxo,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ValueListenableBuilder(
          valueListenable: controller.loadingApi,
          builder: (_, dynamic loading, __) {
            if (loading) {
              return Center(child: CircularProgressIndicator());
            }

            // ignore: unnecessary_null_comparison
            if (controller.lembretes!.length == null) {
              return SemLembretes();
            }

            print(controller.lembretes);

            return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: controller.lembretes!.length,
                itemBuilder: (context, index) {
                  LembreteDto lembrete =
                      controller.lembretes![index] as LembreteDto;

                  return CardLembrete(
                    lembrete: lembrete,
                    favoritar: () {
                      controller.favoritar(lembrete.id);
                    },
                    deletar: () {
                      controller.deletar(lembrete.id);
                    },
                  );
                });
          },
        ),
      ),
    );
  }
}
