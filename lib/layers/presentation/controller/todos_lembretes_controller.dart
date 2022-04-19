import 'package:flutter/material.dart';

import '../../domain/entities/lembrete.dart';
import '../../domain/usecases/GetLembretes/get_lembretes_usecase.dart';

class TodosLembretesController {
  final loadingApi = ValueNotifier<bool>(false);

  TodosLembretesController(this.getLembretesUseCase) {
    getLembretes();
  }

  List<Lembrete> lembretes;

  set loading(bool bool) => loadingApi.value = bool;

  final GetLembretesUseCase getLembretesUseCase;

  getLembretes() async {
    loading = true;
    lembretes = await getLembretesUseCase.call();
    loading = false;
  }
}
