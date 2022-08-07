import 'package:lembretes/layers/domain/usecases/EditarLembrete/editar_lembrete_usecase.dart';

import '../../entities/lembrete.dart';
import '../../repositories/LembreteRepository.dart';

class EditarLembreteUseCaseImp implements EditarLembreteUseCase {
  final LembreteRepository? lembreteRepository;

  EditarLembreteUseCaseImp(this.lembreteRepository);

  @override
  Future<void> call(int id, Lembrete lembrete) async {
    return await lembreteRepository!.editarLembrete(id, lembrete);
  }
}
