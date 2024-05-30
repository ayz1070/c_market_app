import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/model/display/view_module/view_module.model.dart';
import '../../../../../domain/usecase/base/display/display.usecase.dart';
import '../../../../../domain/usecase/display/view_module/get_view_modules.usecase.dart';
import '../../component/view_module_list/view_module_factory/view_module_factory.dart';

part 'view_module_event.dart';

part 'view_module_state.dart';

part 'view_module_bloc.freezed.dart';

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ViewModuleBloc extends Bloc<ViewModuleEvent, ViewModuleState> {
  final DisplayUsecase _displayUsecase;

  ViewModuleBloc(this._displayUsecase) : super(ViewModuleState()) {
    on<ViewModuleInitialized>(_onViewModuleInitialized);
    on<ViewModuleFetched>(
      _onViewModuleFetched,
      transformer: _throttleDroppable(Duration(milliseconds: 400)),
    );
  }

  Future<void> _onViewModuleInitialized(
    ViewModuleInitialized event,
    Emitter<ViewModuleState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final tabId = event.tabId;
    try {
      final response = await _fetch(tabId: tabId);
      response.when(
        success: (data) {
          ViewModuleFactory viewModuleFactory = ViewModuleFactory();
          final List<Widget> viewModules =
              data.map((e) => viewModuleFactory.textToWidget(e)).toList();
          emit(state.copyWith(
            status: Status.success,
            tabId: tabId,
            viewModules: viewModules,
          ));
        },
        failure: (error) {
          emit(state.copyWith(status: Status.error, error: error));
        },
      );
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: Status.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }

  Future<Result<List<ViewModule>>> _fetch({
    required int tabId,
    int page = 1,
  }) async {
    return await _displayUsecase.excute(
      usecase: GetViewModulesUsecase(tabId: tabId, page: page),
    );
  }

  Future<void> _onViewModuleFetched(
      ViewModuleFetched event, Emitter<ViewModuleState> emit) async {
    // 끝 페이지에 도달했다면 리턴
    if (state.isEndOfPage) return;
    final nextPage = state.currentPage + 1;
    final tabId = state.tabId;

    emit(state.copyWith(status: Status.loading));
    final response = await _fetch(tabId: tabId, page: nextPage);
    try {
      response.when(
        success: (data) {
          if (data.isEmpty) {
            emit(
              state.copyWith(
                status: Status.success,
                currentPage: nextPage,
                isEndOfPage: true,
              ),
            );
          }
          final List<Widget> viewModules = [...state.viewModules];
          ViewModuleFactory viewModuleFactory = ViewModuleFactory();
          viewModules.addAll(List.generate(
            data.length,
            (index) => viewModuleFactory.textToWidget(data[index]),
          ));

          emit(state.copyWith(
            status: Status.success,
            tabId: tabId,
            viewModules: viewModules,
          ));
        },
        failure: (error) {
          emit(state.copyWith(status: Status.error, error: error));
        },
      );
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: Status.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }
}
