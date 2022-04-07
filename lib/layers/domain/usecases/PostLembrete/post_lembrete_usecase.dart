import '../../entities/lembrete.dart';

abstract class PostLembreteUseCase {
  Future<void> call(Lembrete lembrete);
}
