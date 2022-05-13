import 'package:flutter/material.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';

class EditarPage extends StatelessWidget {
  const EditarPage({Key key, @required this.lembrete}) : super(key: key);

  final Lembrete lembrete;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
    );
  }
}
