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
    );
  }
}
