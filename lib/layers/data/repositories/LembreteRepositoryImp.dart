import 'package:lembretes/layers/data/datasources/get_lembretes_datasource.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/repositories/LembreteRepository.dart';

class LembreteRepositoryImp implements LembreteRepository {
  final GetLembretesDataSource lembretesDataSource;

  LembreteRepositoryImp(this.lembretesDataSource);

  @override
  Future<List<Lembrete>> getLembretes() async =>
      lembretesDataSource.getLembretes();
}
