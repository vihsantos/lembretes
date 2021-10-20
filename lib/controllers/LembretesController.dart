import 'package:get/get.dart';
import 'package:lembretes/Services/LembreteServices.dart';

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
}
