import 'package:flutter/material.dart';
import '../utils/PaletaDeCores.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
    );
  }
}
