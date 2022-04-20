import 'package:lembretes/layers/domain/usecases/DeletarLembrete/deletar_lembrete_usecase.dart';

class DeletarController {
  final DeletarLembreteUseCase deletarLembreteUseCase;

  DeletarController(this.deletarLembreteUseCase);

  deletarLembrete(int id) {
    deletarLembreteUseCase.call(id);
  }
}
