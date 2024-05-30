import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/extensions.dart';
import '../../bloc/view_module_bloc/view_module_bloc.dart';

class ViewModuleList extends StatefulWidget {
  final int tabId;

  const ViewModuleList({required this.tabId, super.key});

  @override
  State<ViewModuleList> createState() => _ViewModuleListState();
}

class _ViewModuleListState extends State<ViewModuleList> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isEnd) {
      context.read<ViewModuleBloc>().add(ViewModuleFetched());
    }
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  bool get _isEnd {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final curScroll = scrollController.offset;

    return curScroll >= maxScroll * 0.9;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: BlocBuilder<ViewModuleBloc, ViewModuleState>(builder: (_, state) {
        return (state.status.isInitial || state.viewModules.isEmpty)
            ? Center(child: CircularProgressIndicator())
            : ListView(controller: scrollController, children: [
                ...state.viewModules,
                if (state.status.isLoading) LoadingWidget(),
              ]);
      }),
      onRefresh: () async => context
          .read<ViewModuleBloc>()
          .add(ViewModuleInitialized(tabId: widget.tabId, isRefresh: true)),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: Center(
        child:
            SizedBox(width: 20, height: 20, child: CircularProgressIndicator()),
      ),
    );
  }
}
