import 'package:get_it/get_it.dart';

import '../../app.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton<CustomDio>(() => CustomDio());
  sl.registerLazySingleton<CharactersRepository>(
    () => CharactersRepositoryImpl(
      dio: sl<CustomDio>(),
    ),
  );
  sl.registerLazySingleton<CharactersCubit>(
    () => CharactersCubit(
      repository: sl<CharactersRepository>(),
    ),
  );
}
