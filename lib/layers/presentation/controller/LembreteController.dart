import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase.dart';
import '../../domain/entities/lembrete.dart';

class LembreteController {
  final GetLembretesUseCase getLembretesUseCase;

  LembreteController(this.getLembretesUseCase) {
    getLembretes();
  }

  List<Lembrete> lembretes;

  getLembretes() async {
    lembretes = await getLembretesUseCase.call();
    print(lembretes);
  }
}
