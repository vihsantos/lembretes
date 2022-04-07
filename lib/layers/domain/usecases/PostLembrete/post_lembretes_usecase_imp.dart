import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/usecases/PostLembrete/post_lembrete_usecase.dart';

import '../../repositories/LembreteRepository.dart';

class PostLembreteUseCaseImp implements PostLembreteUseCase {
  final LembreteRepository lembreteRepository;

  PostLembreteUseCaseImp(this.lembreteRepository);

  @override
  Future<void> call(Lembrete lembrete) async {
    return await lembreteRepository.postLembrete(lembrete);
  }
}
