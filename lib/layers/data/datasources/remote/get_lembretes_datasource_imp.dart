import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lembretes/layers/data/dto/lembrete_dto.dart';
import '../../../domain/entities/lembrete.dart';
import '../get_lembretes_datasource.dart';

class GetLembretesDataSourceImp extends GetLembretesDataSource {
  @override
  Future<List<LembreteDto>> getLembretes() async {
    var response =
        await http.get(Uri.parse('http://192.168.2.104:3000/lembretes/'));

    if (response.statusCode == 200) {
      Iterable lista = json.decode(response.body);
      List<LembreteDto> lembretes =
          lista.map((model) => LembreteDto.fromMap(model)).toList();

      return lembretes;
    } else {
      return null;
    }
  }

  @override
  Future<void> postLembrete(LembreteDto lembrete) {
    // TODO: implement postLembrete
    throw UnimplementedError();
  }
}
