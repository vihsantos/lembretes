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

  static Future enviarLembrete(Lembrete lembrete) async {
    var uri = Uri.parse('http://localhost:3000/lembretes/');

    var response = await http.post(uri,
        headers: {"Content-Type": "application/json"},
        body: json.encode(lembrete));

    if (response.statusCode == 200) print("Ok!!");
    return response;
  }
}
