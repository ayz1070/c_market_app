import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../dependency_injection.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../bloc/menu_bloc/menu_bloc.dart';
import '../../bloc/view_module_bloc/view_module_bloc.dart';
import '../view_module_list/view_module_list.dart';

class GlobalNavBarView extends StatelessWidget {
  const GlobalNavBarView(this.mallType, this.menus, {super.key});

  final MallType mallType;
  final List<Menu> menus;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(builder: (context, state) {
      return Expanded(
        child: TabBarView(
            children: List.generate(
          state.menus.length,
          (index) {
            return BlocProvider(
              create: (_)=> ViewModuleBloc(getIt<DisplayUsecase>())
              ..add(ViewModuleInitialized(tabId: menus[index].tabId)),
              child: const ViewModuleList(),
            );
          },
        )),
      );
    });
  }
}

class ViewModuleList extends StatelessWidget {
  const ViewModuleList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewModuleBloc, ViewModuleState>(builder: (_, state) {
      switch (state.status) {
        case Status.initial:
        case Status.loading:
          return const Center(child: CircularProgressIndicator());
        case Status.success:
          return Column(
            children: [
              Container(
                height: 50,
                color: Colors.deepOrange,
                child: Center(
                  child: Text("${state.tabId}"),
                ),
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (_, index) {
                      return SizedBox(
                        height: 200,
                        child: Center(
                          child: Text("${state.viewModules[index].runtimeType}"),
                        ),
                      );
                    },
                    separatorBuilder: (_, index) =>
                      Divider(thickness: 4,),
                    itemCount: state.viewModules.length),
              ),
            ],
          );
        case Status.error:
          return const Center(child: Text('error'),);
      }
    });
  }
}
