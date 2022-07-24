import 'package:flutter/material.dart';
import 'package:lembretes/layers/data/datasources/remote/lembretes_datasource_imp.dart';
import 'package:lembretes/layers/data/dto/lembrete_dto.dart';
import 'package:lembretes/layers/data/repositories/LembreteRepositoryImp.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase_imp.dart';
import 'package:lembretes/layers/presentation/controller/lembretes_controller.dart';
import 'package:lembretes/layers/presentation/utils/PaletaDeCores.dart';
import 'package:lembretes/layers/presentation/utils/cards/card_lembrete.dart';
import '../utils/cards/BannerDivider.dart';
import '../utils/cards/SemLembretes.dart';
import 'ConfigPage.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    LembretesController controller = LembretesController(
        GetLembreteUseCaseImp(LembreteRepositoryImp(LembretesDataSourceImp())));

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
            // IconButton(
            //     onPressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => FavoritePage()));
            //     },
            //     icon: Icon(
            //       Icons.favorite,
            //       color: PaletaDeCores.roxo,
            //       size: 28,
            //     )),
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
                Row(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: PaletaDeCores.preto.withOpacity(0.10),
                                  offset: Offset(6, 6),
                                  blurRadius: 10)
                            ],
                            color: PaletaDeCores.branco,
                            borderRadius: BorderRadius.circular(20)),
                        height: size.height * 0.15,
                        width: size.width * 0.48,
                        child: Center(
                          child: ValueListenableBuilder(
                            valueListenable: controller.loadingApi,
                            builder: (_, loading, __) {
                              if (loading) {
                                return CircularProgressIndicator();
                              }

                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${controller.lembretes.length}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                        color: PaletaDeCores.preto),
                                  ),
                                  Text(
                                    (controller.lembretes.length <= 1)
                                        ? "lembrete"
                                        : "lembretes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: PaletaDeCores.preto,
                                        fontSize: 18),
                                  )
                                ],
                              );
                            },
                          ),
                        )),
                    SizedBox(width: size.width * 0.06),
                    Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: PaletaDeCores.preto.withOpacity(0.10),
                                  offset: Offset(6, 6),
                                  blurRadius: 10)
                            ],
                            color: PaletaDeCores.branco,
                            borderRadius: BorderRadius.circular(20)),
                        height: size.height * 0.15,
                        width: size.width * 0.40,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28,
                                    color: PaletaDeCores.preto),
                              ),
                              Text(
                                "favoritos",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: PaletaDeCores.preto,
                                    fontSize: 18),
                              )
                            ])),
                  ],
                ),
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
                SizedBox(height: size.height * 0.02),
                ValueListenableBuilder(
                  valueListenable: controller.loadingApi,
                  builder: (_, loading, __) {
                    if (loading) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    if (controller.lembretes.length == 0) {
                      return SemLembretes();
                    }

                    return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: (controller.lembretes.length <= 1) ? 1 : 2,
                        itemBuilder: (context, index) {
                          LembreteDto lembrete = controller.lembretes[index];

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
