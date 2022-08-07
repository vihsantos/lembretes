import 'package:lembretes/layers/data/dto/lembrete_dto.dart';
import 'package:lembretes/layers/domain/usecases/EditarLembrete/editar_lembrete_usecase.dart';

class EditarLembreteController {
  final EditarLembreteUseCase editarLembreteUseCase;

  EditarLembreteController(this.editarLembreteUseCase);

  Future editarLembrete(int id, LembreteDto lembrete) async {
    await editarLembreteUseCase.call(id, lembrete);
  }
}
