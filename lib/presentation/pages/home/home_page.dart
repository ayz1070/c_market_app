import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/dialog/common_dialog.dart';
import '../../../dependency_injection.dart';
import '../../../domain/usecase/display/display.usecase.dart';
import '../../main/cubit/mall_type_cubit.dart';
import 'bloc/menu_bloc/menu_bloc.dart';
import 'component/global_nav/global_nav_bar.dart';
import 'component/global_nav/global_nav_bar_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return BlocProvider(
          create: (_) =>
          getIt<MenuBloc>()..add(MenuInitialized(mallType: state)),
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
      child: BlocConsumer<MenuBloc, MenuState>(
        builder: (_, state) {
          switch (state.status) {
            case Status.initial:
              return Center(child: CircularProgressIndicator());
            case Status.loading:
              return DefaultTabController(
                length: state.menus.length,
                child: Column(
                  children: [
                    GlobalNavBar(state.menus),
                    GlobalNavBarView(state.mallType, state.menus)
                  ],
                ),
              );
            case Status.success:
              return DefaultTabController(
                length: state.menus.length,
                child: Column(
                  children: [
                    GlobalNavBar(state.menus),
                    GlobalNavBarView(state.mallType, state.menus)
                  ],
                ),
                animationDuration: const Duration(milliseconds: 300),
              );
            case Status.error:
              return const Center(child: Text('error'));
          }
        },
        listener: (context, state) async {
          if (state.status == Status.error) {
            final bool result =
            (await CommonDialog.errorDialog(context, state.error) ?? false);
            if (result) {
              context
                  .read<MenuBloc>()
                  .add(MenuInitialized(mallType: MallType.market));
            }
          }
        },
        listenWhen: (prev, curr) => prev.status != curr.status,
      ),
    );
  }
}
