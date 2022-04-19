import '../../entities/lembrete.dart';

abstract class GetFavoritosUseCase {
  Future<List<Lembrete>> call();
}
