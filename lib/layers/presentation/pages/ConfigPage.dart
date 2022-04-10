import 'package:flutter/material.dart';

import '../utils/PaletaDeCores.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
    );
  }
}
