import 'package:lembretes/layers/data/datasources/lembretes_datasource.dart';
import 'package:lembretes/layers/data/dto/lembrete_dto.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/repositories/LembreteRepository.dart';

class LembreteRepositoryImp implements LembreteRepository {
  final LembretesDataSource? lembretesDataSource;

  LembreteRepositoryImp(this.lembretesDataSource);

  @override
  Future<List<Lembrete>?> getLembretes() async =>
      lembretesDataSource!.getLembretes();

  @override
  Future<void> postLembrete(Lembrete lembrete) async =>
      lembretesDataSource!.postLembrete(lembrete as LembreteDto);

  @override
  Future<List<Lembrete>?> buscarFavoritos() async =>
      lembretesDataSource!.buscarFavoritos();

  @override
  Future<void> deletarLembrete(int id) async =>
      lembretesDataSource!.deletarLembrete(id);

  @override
  Future<void> favoritar(int? id) async => lembretesDataSource!.favoritar(id);
}
