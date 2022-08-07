import '../../data/dto/lembrete_dto.dart';
import '../../domain/usecases/PostLembrete/post_lembrete_usecase.dart';

class CriarLembreteController {
  final PostLembreteUseCase? postLembreteUseCase;

  CriarLembreteController(this.postLembreteUseCase);

  postLembrete(LembreteDto lembrete) {
    postLembreteUseCase!.call(lembrete);
  }
}
