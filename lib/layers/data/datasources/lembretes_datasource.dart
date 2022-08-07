import 'package:lembretes/layers/data/dto/lembrete_dto.dart';

abstract class LembretesDataSource {
  Future<List<LembreteDto>?> getLembretes();
  Future<void> postLembrete(LembreteDto lembrete);
  Future<void> deletarLembrete(int id);
  Future<List<LembreteDto>?> buscarFavoritos();
  Future<void> favoritar(int? id);
}
