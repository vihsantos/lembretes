import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/repositories/LembreteRepository.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase.dart';

class GetLembreteUseCaseImp implements GetLembretesUseCase {
  final LembreteRepository lembreteRepository;

  GetLembreteUseCaseImp(this.lembreteRepository);

  @override
  Future<List<Lembrete>> call() async {
    return await lembreteRepository.getLembretes();
  }
}
