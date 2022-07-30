import 'package:get_it/get_it.dart';
import 'package:lembretes/layers/data/datasources/lembretes_datasource.dart';
import 'package:lembretes/layers/data/datasources/remote/lembretes_datasource_imp.dart';
import 'package:lembretes/layers/data/repositories/LembreteRepositoryImp.dart';
import 'package:lembretes/layers/domain/repositories/LembreteRepository.dart';
import 'package:lembretes/layers/domain/usecases/DeletarLembrete/deletar_lembrete_usecase.dart';
import 'package:lembretes/layers/domain/usecases/DeletarLembrete/deletar_lembrete_usecase_imp.dart';
import 'package:lembretes/layers/domain/usecases/FavoritarLembrete/favoritar_usecase.dart';
import 'package:lembretes/layers/domain/usecases/FavoritarLembrete/favoritar_usecase_imp.dart';
import 'package:lembretes/layers/domain/usecases/GetFavoritos/get_favoritos_usecase.dart';
import 'package:lembretes/layers/domain/usecases/GetFavoritos/get_favoritos_usecase_imp.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase.dart';
import 'package:lembretes/layers/domain/usecases/GetLembretes/get_lembretes_usecase_imp.dart';
import 'package:lembretes/layers/domain/usecases/PostLembrete/post_lembrete_usecase.dart';
import 'package:lembretes/layers/domain/usecases/PostLembrete/post_lembretes_usecase_imp.dart';
import 'package:lembretes/layers/presentation/controller/criar_lembrete_controller.dart';
import 'package:lembretes/layers/presentation/controller/home_controller.dart';
import 'package:lembretes/layers/presentation/controller/lembretes_controller.dart';

class Inject {
  static void initialize() {
    GetIt getIt = GetIt.instance;

    getIt.registerLazySingleton<LembretesDataSource>(
        () => LembretesDataSourceImp());

    getIt.registerLazySingleton<LembreteRepository>(
        () => LembreteRepositoryImp(getIt()));

    getIt.registerLazySingleton<GetLembretesUseCase>(
        () => GetLembreteUseCaseImp(getIt()));

    getIt.registerLazySingleton<GetFavoritosUseCase>(
        () => GetFavoritosUseCaseImp(getIt()));

    getIt.registerLazySingleton<PostLembreteUseCase>(
        () => PostLembreteUseCaseImp(getIt()));

    getIt.registerLazySingleton<DeletarLembreteUseCase>(
        () => DeletarLembreteUseCaseImp(getIt()));

    getIt.registerLazySingleton<FavoritarUseCase>(
        () => FavoritarUseCaseImp(getIt()));

    getIt.registerFactory<LembretesController>(
        () => LembretesController(getIt(), getIt()));

    getIt.registerFactory<CriarLembreteController>(
        () => CriarLembreteController(getIt()));

    getIt.registerFactory<HomeController>(
        () => HomeController(getIt(), getIt()));
  }
}
