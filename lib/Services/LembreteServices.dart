import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lembretes/models/Lembrete.dart';

class LembreteServices {
  static Future<List<Lembrete>> getLembretes() async {
    var response =
        await http.get(Uri.parse('http://localhost:3000/lembretes/'));

    print(response.statusCode);

    if (response.statusCode == 200) {
      Iterable lista = json.decode(response.body);
      List<Lembrete> lembretes =
          lista.map((model) => Lembrete.fromJson(model)).toList();

      return lembretes;
    } else {
      return null;
    }
  }
}
