import '../../domain/entities/lembrete.dart';
import '../../domain/usecases/GetLembretes/get_lembretes_usecase.dart';

class HomeController {
  final GetLembretesUseCase getLembretesUseCase;

  HomeController(this.getLembretesUseCase) {
    getLembretes();
  }

  List<Lembrete> lembretes;

  getLembretes() async {
    lembretes = await getLembretesUseCase.call();
    print(lembretes);
  }
}
