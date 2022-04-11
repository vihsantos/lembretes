import 'package:flutter/material.dart';
import 'package:lembretes/layers/data/datasources/remote/get_lembretes_datasource_imp.dart';
import 'package:lembretes/layers/data/repositories/LembreteRepositoryImp.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase_imp.dart';
import 'package:lembretes/layers/presentation/controller/LembreteController.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';
import '../utils/cards/BannerDivider.dart';
import '../utils/cards/RowQuantidade.dart';
import '../utils/cards/card_lembrete.dart';
import '../utils/cards/SemLembretes.dart';
import 'ConfigPage.dart';
import 'FavoritePage.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LembreteController _controller = LembreteController(GetLembreteUseCaseImp(
      LembreteRepositoryImp(GetLembretesDataSourceImp())));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Lembrete a = new Lembrete(
        id: 1,
        titulo: "Titulo qualquer",
        descricao:
            "Qualquer titulo.... Um mergulhador encontra uma perna decepada. Os agentes tentam identificar a que corpo ela pertence, levando-os a um caso de um oficial morto há dois anos. Qualquer titulo.... Um mergulhador encontra uma perna decepada. Os agentes tentam identificar a que corpo ela pertence, levando-os a um caso de um oficial morto há dois anos. Qualquer titulo.... Um mergulhador encontra uma perna decepada. Os agentes tentam identificar a que corpo ela pertence, levando-os a um caso de um oficial morto há dois anos. Qualquer titulo.... Um mergulhador encontra uma perna decepada. Os agentes tentam identificar a que corpo ela pertence, levando-os a um caso de um oficial morto há dois anos. Qualquer titulo.... Um mergulhador encontra uma perna decepada. Os agentes tentam identificar a que corpo ela pertence, levando-os a um caso de um oficial morto há dois anos.",
        datal: DateTime.now());

    return Scaffold(
        backgroundColor: PaletaDeCores.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Home Page".toUpperCase(),
            style: TextStyle(
                fontSize: 22,
                color: PaletaDeCores.roxo,
                fontWeight: FontWeight.w900),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FavoritePage()));
                },
                icon: Icon(
                  Icons.favorite,
                  color: PaletaDeCores.roxo,
                  size: 28,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ConfigPage()));
                },
                icon:
                    Icon(Icons.settings, color: PaletaDeCores.roxo, size: 28)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: PaletaDeCores.branco,
          selectedItemColor: PaletaDeCores.roxo,
          unselectedItemColor: PaletaDeCores.preto,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Criar"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listar"),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RowQuantidade(),
              SizedBox(height: size.height * 0.025),
              BannerDivider(),
              SizedBox(height: size.height * 0.025),
              Text(
                "Lembretes recentes:",
                style: TextStyle(
                    color: PaletaDeCores.preto,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: size.height * 0.025),
              CardLembrete(
                lembrete: a,
              ),
              SizedBox(height: size.height * 0.025),
              SemLembretes()
            ],
          ),
        ));
  }
}
