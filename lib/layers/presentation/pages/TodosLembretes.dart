import 'package:flutter/material.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

class TodosLembretes extends StatefulWidget {
  const TodosLembretes({Key key}) : super(key: key);

  @override
  State<TodosLembretes> createState() => _TodosLembretesState();
}

class _TodosLembretesState extends State<TodosLembretes> {
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
      // body: Padding(
      //   padding: const EdgeInsets.only(left: 10, right: 10),
      //   child: ValueListenableBuilder(
      //     valueListenable: _controller.loadingApi,
      //     builder: (_, loading, __) {
      //       if (loading) {
      //         return Center(child: CircularProgressIndicator());
      //       }

      //       if (_controller.lembretes.length == null) {
      //         return SemLembretes();
      //       }

      //       return ListView.builder(
      //           scrollDirection: Axis.vertical,
      //           shrinkWrap: true,
      //           itemCount: _controller.lembretes.length,
      //           itemBuilder: (context, index) {
      //             LembreteDto lembrete = _controller.lembretes[index];

      //             return CardLembrete(lembrete: lembrete);
      //           });
      //     },
      //   ),
      // ),
    );
  }
}
