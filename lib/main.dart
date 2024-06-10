import 'presentation/routes/routes.dart';
import 'dependency_injection.dart' ;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/theme/theme_data.dart';
import 'data/entity/display/cart/cart.entity.dart';
import 'data/entity/display/product_info/product_info.entity.dart';
import 'presentation/main/bloc/cart_bloc/cart_bloc.dart';
import 'presentation/main/bloc/payment_bloc/payment_bloc.dart';
import 'presentation/main/cubit/mall_type_cubit.dart';
import 'presentation/pages/cart/bloc/cart_list_bloc/cart_list_bloc.dart';


import 'injection_container.dart' as di;
import '../../presentation/blocs/user/user_bloc.dart';
import 'presentation/pages/my_page/my_page.dart';
void main() async{
  await Hive.initFlutter();

  Hive.registerAdapter(ProductInfoEntityAdapter());
  Hive.registerAdapter(CartEntityAdapter());

  //setLocator();

  configureDependencies();
  di.init();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.sl<UserBloc>(),
        ),

        BlocProvider<MallTypeCubit>(
          create: (context) => MallTypeCubit(),
        ),
        BlocProvider(
          create: (_)  => getIt<CartBloc>()..add(CartInitialized()),
        ),
        BlocProvider(
          lazy: false,
          create: (_)  => getIt<CartListBloc>()..add(CartListInitialized()),
        ),
        BlocProvider<PaymentBloc>( // PaymentBloc 추가
          lazy: false,
          create: (_) => getIt<PaymentBloc>(), // PaymentBloc 설정
        ),// Add other providers if needed
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: CustomThemeData.themeData,
      ),
    );
  }
}
