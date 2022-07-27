import 'package:flutter/material.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase.dart';

class HomeController {
  final GetLembretesUseCase getLembretesUseCase;

  HomeController(this.getLembretesUseCase) {
    initialize();
  }

  initialize() {
    this.buscarLembretes();
  }

  List<Lembrete> lembretes;
  final loadingApi = ValueNotifier<bool>(false);
  set loading(bool bool) => loadingApi.value = bool;
  int quantFavoritos = 0;

  bool get loading => loadingApi.value;

  buscarLembretes() async {
    loading = true;
    lembretes = await getLembretesUseCase.call();
    for (var lembrete in lembretes) {
      if (lembrete.favorito == true) {
        quantFavoritos++;
      }
    }

    loading = false;
  }
}
