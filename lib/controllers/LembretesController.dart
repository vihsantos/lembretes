import 'package:get/get.dart';
import 'package:lembretes/Services/LembreteServices.dart';

class LembretesController extends GetxController {
  List lembretes = [].obs;
  RxBool loading = false.obs;

  LembretesController() {
    buscarLembretes();
  }

  buscarLembretes() async {
    loading(true);
    lembretes = await LembreteServices.getLembretes();
    loading(false);
  }
}
