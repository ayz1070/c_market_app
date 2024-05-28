import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constant.dart';
import '../../../domain/usecase/base/display/display.usecase.dart';
import '../../../service_locator.dart';
import '../../main/cubit/mall_type_cubit.dart';
import 'bloc/menu_bloc/menu_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (context,state) {
        return BlocProvider(
            create: (_) =>
            MenuBloc(locator<DisplayUsecase>())..add(MenuInitialized(mallType: state)),
            child: const HomePageView(),
        );
      },
    );
  }
}


class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MallTypeCubit, MallType>(
      listener: (context, state) =>
      context.read<MenuBloc>().add(MenuInitialized(mallType: state)),
      listenWhen: (prev, curr) => prev.index != curr.index,
      child: BlocBuilder<MenuBloc, MenuState>(builder: (_, state){
        switch(state.status){
          case Status.initial:
          case Status.loading:
            return Center(child: CircularProgressIndicator());
          case Status.success:
            return const Center(child: Text('${state.menus}'));
          case Status.error:
            return const Center(child: Text('error'));
        }
      }),
    );
    //   Scaffold(
    //   appBar: AppBar(
    //     title: Text('home'),
    //   ),
    //   body: Center(
    //     child: Text(
    //       'home_page',
    //       style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    //     ),
    //   ),
    // );
  }
}
