import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'data/data_source/user_remote_data_source.dart';
import 'data/repository_impl/user_repository_impl.dart';
import 'domain/repository/user_repository.dart';
import 'domain/usecase/get_user_data.dart';
import 'presentation/blocs/user/user_bloc.dart';

final sl = GetIt.instance;

void init() {
  // Bloc
  sl.registerFactory(() => UserBloc(getUserData: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetUserData(sl()));

  // Repository
  sl.registerLazySingleton<UserRepository>(
        () => UserRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<UserRemoteDataSource>(
        () => UserRemoteDataSourceImpl(client: sl()),
  );

  // External
  sl.registerLazySingleton(() => http.Client());
}
