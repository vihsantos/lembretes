import 'package:lembretes/layers/domain/entities/lembrete.dart';

abstract class LembreteRepository {
  Future<List<Lembrete>> getLembretes();
  Future<void> postLembrete(Lembrete lembrete);
  Future<void> deletarLembrete(int id);
  Future<List<Lembrete>> buscarFavoritos();
  Future<void> favoritar(int id);
}
