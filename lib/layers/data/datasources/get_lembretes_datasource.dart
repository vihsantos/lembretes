import 'package:lembretes/layers/data/dto/lembrete_dto.dart';

abstract class GetLembretesDataSource {
  Future<List<LembreteDto>> getLembretes();
  Future<void> postLembrete(LembreteDto lembrete);
}
