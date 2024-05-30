import 'package:c_market_app/core/utils/constant.dart';
import 'package:c_market_app/data/data_source/mock/display/display_mock_api.dart';
import 'package:c_market_app/data/repository_impl/display.repository_impl.dart';
import 'package:c_market_app/domain/usecase/base/display/display.usecase.dart';
import 'package:c_market_app/domain/usecase/base/display/menu/get_menus.usecase.dart';
import 'package:c_market_app/presentation/routes/routes.dart';
import 'package:c_market_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/theme_data.dart';
import 'data/data_source/remote/display.api.dart';
import 'presentation/main/cubit/mall_type_cubit.dart';

void main() async{
  setLocator();

  final data = await locator<DisplayApi>().getViewModulesByTabId(10001,1);
  print(data);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MallTypeCubit>(
          create: (context) => MallTypeCubit(),
        ),
        // Add other providers if needed
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: CustomThemeData.themeData,
      ),
    );
  }
}
