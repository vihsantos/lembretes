import 'package:flutter/material.dart';
import 'package:lembretes/layers/data/datasources/remote/lembretes_datasource_imp.dart';
import 'package:lembretes/layers/data/dto/lembrete_dto.dart';
import 'package:lembretes/layers/data/repositories/LembreteRepositoryImp.dart';
import 'package:lembretes/layers/domain/entities/lembrete.dart';
import 'package:lembretes/layers/domain/usecases/GetFavoritos/get_favoritos_usecase_imp.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase_imp.dart';
import 'package:lembretes/layers/presentation/controller/home_controller.dart';
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
  // LembreteController _controller = LembreteController(GetLembreteUseCaseImp(
  //     LembreteRepositoryImp(GetLembretesDataSourceImp())));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    HomeController _controller = new HomeController(
        GetLembreteUseCaseImp(LembreteRepositoryImp(LembretesDataSourceImp())),
        GetFavoritosUseCaseImp(
            LembreteRepositoryImp(LembretesDataSourceImp())));

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
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
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
                ValueListenableBuilder(
                  valueListenable: _controller.loadingApi,
                  builder: (_, loading, __) {
                    if (loading) {
                      return Center(child: CircularProgressIndicator());
                    }

                    if (_controller.quantLembretes == null) {
                      return SemLembretes();
                    }

                    if (_controller.quantLembretes < 1) {
                      return Column(
                        children: [
                          CardLembrete(lembrete: _controller.lembretes[0]),
                          SemLembretes()
                        ],
                      );
                    }

                    return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          LembreteDto lembrete = _controller.lembretes[index];

                          return CardLembrete(lembrete: lembrete);
                        });
                  },
                )
              ],
            ),
          ),
        ));
  }
}
