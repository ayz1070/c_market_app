import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(){
  getIt.init();

  getIt.registerLazySingleton<FirebaseStorage>(() => FirebaseStorage.instance);
}
