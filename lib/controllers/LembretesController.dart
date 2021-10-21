import 'package:get/get.dart';
import 'package:lembretes/Services/LembreteServices.dart';
import 'package:lembretes/models/Lembrete.dart';

class LembretesController extends GetxController {
  List lembretes = [];
  bool loading = false;

  @override
  void onInit() {
    buscarLembretes();
    super.onInit();
  }

  buscarLembretes() async {
    loading = true;
    lembretes = await LembreteServices.getLembretes();
    loading = false;
    update();
  }

  enviarLembrete(String titulo, String descricao) async {
    Lembrete novo = new Lembrete(
        titulo: titulo, descricao: descricao, datal: DateTime.now());
    LembreteServices.enviarLembrete(novo);
  }
}
