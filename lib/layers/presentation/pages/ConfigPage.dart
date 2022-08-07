import 'package:flutter/material.dart';

import '../utils/PaletaDeCores.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
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
          "Configurações".toUpperCase(),
          style: TextStyle(
              fontSize: 22,
              color: PaletaDeCores.roxo,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
