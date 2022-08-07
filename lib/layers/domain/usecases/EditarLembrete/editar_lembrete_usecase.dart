import '../../entities/lembrete.dart';

abstract class EditarLembreteUseCase {
  Future<void> call(int id, Lembrete lembrete);
}
