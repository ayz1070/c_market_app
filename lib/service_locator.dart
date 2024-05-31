import 'package:get_it/get_it.dart';

import 'data/data_source/local_storage/display.dao.dart';
import 'data/data_source/mock/display/display_mock_api.dart';
import 'data/data_source/remote/display.api.dart';
import 'data/repository_impl/display.repository_impl.dart';
import 'domain/repository/display.repository.dart';
import 'domain/usecase/display/display.usecase.dart';
import 'presentation/main/bloc/cart_bloc/cart_bloc.dart';
import 'presentation/main/bloc/payment_bloc/payment_bloc.dart';
import 'presentation/pages/cart/bloc/cart_list_bloc/cart_list_bloc.dart';
import 'presentation/pages/home/bloc/menu_bloc/menu_bloc.dart'; // CartListBloc 파일을 임포트하세요

final locator = GetIt.instance;

void setLocator() {
  _data();
  _domain();
  _bloc(); // BLoC 관련 객체를 등록할 함수 추가
}

void _data() {
  locator.registerSingleton<DisplayApi>(DisplayMockApi());
  locator.registerSingleton<DisplayDao>(DisplayDao()); // Ensure DisplayDao is registered
}

void _domain() {
  locator.registerSingleton<DisplayRepository>(
      DisplayRepositoryImpl(locator<DisplayApi>(), locator<DisplayDao>()) // Provide both arguments
  );

  // usecase
  locator.registerSingleton<DisplayUsecase>(
      DisplayUsecase(locator<DisplayRepository>())
  );
}

void _bloc() {
  locator.registerFactory(() =>
      MenuBloc(
          locator<DisplayUsecase>()));
  locator.registerFactory(() =>
      CartBloc());

  locator.registerFactory(() =>
      CartListBloc(
          locator<DisplayUsecase>())); //// CartListBloc에 DisplayUsecase를 주입
  locator.registerFactory(() =>
      PaymentBloc());
}