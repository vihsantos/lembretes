import 'package:lembretes/layers/domain/entities/lembrete.dart';

abstract class LembreteRepository {
  Future<List<Lembrete>> getLembretes();
}