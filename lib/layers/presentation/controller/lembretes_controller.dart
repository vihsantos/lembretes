import 'package:flutter/material.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/usecases/FavoritarLembrete/favoritar_usecase.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase.dart';

class LembretesController {
  final GetLembretesUseCase? getLembretesUseCase;
  final FavoritarUseCase? favoritarUseCase;

  LembretesController(this.getLembretesUseCase, this.favoritarUseCase) {
    initialize();
  }

  initialize() {
    this.buscarLembretes();
  }

  List<Lembrete>? lembretes;
  final loadingApi = ValueNotifier<bool>(false);
  set loading(bool bool) => loadingApi.value = bool;

  bool get loading => loadingApi.value;

  buscarLembretes() async {
    loading = true;
    lembretes = await getLembretesUseCase!.call();
    loading = false;
  }

  favoritar(int? id) async {
    await favoritarUseCase!.call(id);
    buscarLembretes();
  }
}
