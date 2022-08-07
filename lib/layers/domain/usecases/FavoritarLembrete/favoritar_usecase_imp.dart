import 'package:lembretes/layers/domain/repositories/LembreteRepository.dart';
import 'package:lembretes/layers/domain/usecases/FavoritarLembrete/favoritar_usecase.dart';

class FavoritarUseCaseImp extends FavoritarUseCase {
  final LembreteRepository? lembreteRepository;

  FavoritarUseCaseImp(this.lembreteRepository);

  @override
  Future<void> call(int? id) async {
    return await lembreteRepository!.favoritar(id);
  }
}
