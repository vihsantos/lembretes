import 'package:flutter/material.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/usecases/DeletarLembrete/deletar_lembrete_usecase.dart';
import 'package:lembretes/layers/domain/usecases/FavoritarLembrete/favoritar_usecase.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase.dart';

class HomeController {
  final GetLembretesUseCase? getLembretesUseCase;
  final FavoritarUseCase? favoritarUseCase;
  final DeletarLembreteUseCase? deletarLembreteUseCase;

  HomeController(this.getLembretesUseCase, this.favoritarUseCase,
      this.deletarLembreteUseCase) {
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

  deletar(int? id) async {
    await deletarLembreteUseCase!.call(id!);
    buscarLembretes();
  }

  quantLembretesFavoritos() {
    int quantFavoritos = 0;
    for (var lembrete in lembretes!) {
      if (lembrete.favorito == true) {
        quantFavoritos++;
      }
    }
    return quantFavoritos;
  }
}
