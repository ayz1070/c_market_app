import 'package:c_market_app/core/utils/constant.dart';
import 'package:c_market_app/data/data_source/mock/display/display_mock_api.dart';
import 'package:c_market_app/data/repository_impl/display.repository_impl.dart';
import 'package:c_market_app/domain/usecase/base/display/display.usecase.dart';
import 'package:c_market_app/domain/usecase/base/display/menu/get_menus.usecase.dart';
import 'package:c_market_app/presentation/routes/routes.dart';
import 'package:c_market_app/service_locator.dart';
import 'package:flutter/material.dart';

import 'core/theme/theme_data.dart';

void main() async{
  final data = await DisplayMockApi().getMenusByMallType('market');
  final data2 = await DisplayRepositoryImpl(DisplayMockApi()).getMenuByMallType(mallType: MallType.market);
  //print(data);
  //print(data2);

  final menus = await DisplayUsecase(DisplayRepositoryImpl(DisplayMockApi()))
      .excute(usecase: GetMenusUsecase(mallType: MallType.market));
  final menus2 = locator<DisplayUsecase>()
  .excute(usecase: GetMenusUsecase(mallType: MallType.market));
  print(menus2);
  //setLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: CustomThemeData.themeData,
    );
  }
}
