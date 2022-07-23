import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lembretes/layers/data/dto/lembrete_dto.dart';
import '../lembretes_datasource.dart';

class LembretesDataSourceImp extends LembretesDataSource {
  @override
  Future<List<LembreteDto>> getLembretes() async {
    var response =
        await http.get(Uri.parse('http://192.168.2.106:3000/lembretes/'));

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
  Future<void> postLembrete(LembreteDto lembrete) async {
    var uri = Uri.parse('http://192.168.2.106:3000/lembretes/');

    var response = await http.post(uri,
        headers: {"Content-Type": "application/json"},
        body: json.encode(lembrete.toMap()));

    if (response.statusCode == 200) print("Ok!!");
  }

  @override
  Future<List<LembreteDto>> buscarFavoritos() async {
    var response = await http
        .get(Uri.parse('http://192.168.2.106:3000/lembretes/favoritos'));

    if (response.statusCode == 200) {
      Iterable lista = json.decode(response.body);
      List<LembreteDto> favoritos =
          lista.map((model) => LembreteDto.fromMap(model)).toList();

      return favoritos;
    } else {
      return null;
    }
  }

  @override
  Future<void> deletarLembrete(int id) async {
    var uri = Uri.parse('http://192.168.2.106:3000/lembretes/$id');

    var response =
        await http.delete(uri, headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) print("Ok!!");
  }
}
