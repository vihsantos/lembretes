import 'package:lembretes/layers/domain/entities/lembrete.dart';

abstract class GetLembretesDataSource {
  Future<List<Lembrete>> getLembretes();
}
