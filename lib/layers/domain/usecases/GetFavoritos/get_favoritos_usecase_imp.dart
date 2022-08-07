import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/repositories/LembreteRepository.dart';
import 'package:lembretes/layers/domain/usecases/GetFavoritos/get_favoritos_usecase.dart';

class GetFavoritosUseCaseImp extends GetFavoritosUseCase {
  final LembreteRepository? lembreteRepository;

  GetFavoritosUseCaseImp(this.lembreteRepository);

  @override
  Future<List<Lembrete>?> call() async {
    return lembreteRepository!.buscarFavoritos();
  }
}
