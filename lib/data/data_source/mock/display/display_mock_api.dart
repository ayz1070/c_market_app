import 'dart:convert';

import 'display_mock_data.dart';
import '../../remote/display.api.dart';
import '../../../dto/common/response_wrapper/response_wrapper.dart';


import '../../../dto/display/menu/menu.dto.dart';
import '../../../dto/display/view_module/view_module.dto.dart';


class DisplayMockApi implements DisplayApi {
  @override
  Future<ResponseWrapper<List<MenuDto>>> getMenusByMallType(String mallType) {
    return Future(
          () =>
          ResponseWrapper(
            status: 'SUCCESS',
            code: '0000',
            message: '',
            data: menuParser(
              mallType == 'market'
                  ? DisplayMockData.menusByMarket
                  : DisplayMockData.menusByBeauty,
            ),
          ),
    );
  }

  @override
  Future<ResponseWrapper<List<ViewModuleDto>>> getViewModulesByTabId(
      int tabId,
      int page,
      ) {
    if (page == 4) {
      return Future.delayed(
        Duration(milliseconds: 800),
            () => ResponseWrapper(
          status: 'SUCCESS',
          code: '0000',
          message: '',
          data: [],
        ),
      );
    }


    String source = DisplayMockData.getViewModules(tabId:tabId);

    return Future.delayed(
      Duration(milliseconds: 800),
          () => ResponseWrapper(
        status: 'SUCCESS',
        code: '0000',
        message: '',
        data: viewModuleParser(source),
      ),
    );
  }

  List<MenuDto> menuParser(String source) {
    List<MenuDto> menus = [];
    final List json = jsonDecode(source);
    menus = json.map((e) => MenuDto.fromJson(e)).toList();

    return menus;
  }


  List<ViewModuleDto> viewModuleParser(String source) {
    List<ViewModuleDto> viewModules = [];
    final List json = jsonDecode(source);
    viewModules = json.map((e) => ViewModuleDto.fromJson(e)).toList();

    return viewModules;
  }
}
  