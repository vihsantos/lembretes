import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:lembretes/layers/data/datasources/remote/get_lembretes_datasource_imp.dart';
import 'package:lembretes/layers/data/repositories/LembreteRepositoryImp.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase_imp.dart';
import 'package:lembretes/layers/presentation/controller/LembreteController.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LembreteController _controller = LembreteController(GetLembreteUseCaseImp(
      LembreteRepositoryImp(GetLembretesDataSourceImp())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(_controller.lembretes[0].titulo),
      ),
    );
  }
}
