import 'package:flutter/material.dart';
import 'package:lembretes/layers/domain/usecases/GetFavoritos/get_favoritos_usecase.dart';

import '../../domain/entities/lembrete.dart';
import '../../domain/usecases/GetLembretes/get_lembretes_usecase.dart';

class HomeController {
  final GetLembretesUseCase getLembretesUseCase;
  final GetFavoritosUseCase getFavoritosUseCase;

  HomeController(this.getLembretesUseCase, this.getFavoritosUseCase) {
    getLembretes();
  }

  final loadingApi = ValueNotifier<bool>(false);
  set loading(bool bool) => loadingApi.value = bool;

  List<Lembrete> lembretes;
  List<Lembrete> favoritos;

  getLembretes() async {
    loading = true;
    lembretes = await getLembretesUseCase.call();
    // favoritos = await getFavoritosUseCase.call();

    loading = false;
  }

  int get quantLembretes => lembretes.length;
  int get quantFavoritos => favoritos.length;
}
