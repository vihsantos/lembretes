import 'package:lembretes/layers/domain/usecases/DeletarLembrete/deletar_lembrete_usecase.dart';

import '../../repositories/LembreteRepository.dart';

class DeletarLembreteUseCaseImp extends DeletarLembreteUseCase {
  final LembreteRepository? lembreteRepository;

  DeletarLembreteUseCaseImp(this.lembreteRepository);

  @override
  Future<void> call(int id) async {
    return await lembreteRepository!.deletarLembrete(id);
  }
}
