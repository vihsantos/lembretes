import '../../entities/lembrete.dart';

abstract class GetLembretesUseCase {
  Future<List<Lembrete>?> call();
}
