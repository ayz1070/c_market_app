import 'package:c_market_app/data/data_source/mock/display/display_mock_api.dart';
import 'package:c_market_app/data/data_source/remote/display.api.dart';
import 'package:c_market_app/data/repository_impl/display.repository_impl.dart';
import 'package:c_market_app/domain/repository/display.repository.dart';
import 'package:c_market_app/domain/usecase/base/display/display.usecase.dart';
import 'package:get_it/get_it.dart';

import 'presentation/pages/home/bloc/menu_bloc/menu_bloc.dart';
import 'presentation/pages/home/bloc/view_module_bloc/view_module_bloc.dart';

final locator = GetIt.instance;

void setLocator(){
  _data();
  _domain();
  _presentation();
}

void _data(){
  locator.registerSingleton<DisplayApi>(DisplayMockApi());
}

void _domain(){
  locator.registerSingleton<DisplayRepository>(
      DisplayRepositoryImpl(locator<DisplayApi>()),
  );

  //usecase
  locator.registerSingleton<DisplayUsecase>(
      DisplayUsecase(locator<DisplayRepository>()),
  );
}

void _presentation(){
  locator.registerFactory(() => MenuBloc(locator<DisplayUsecase>()));
  
  locator.registerFactory(() => ViewModuleBloc(locator<DisplayUsecase>()));
}