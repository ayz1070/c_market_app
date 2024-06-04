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

    if(page == 4) {
      return Future(
            () =>
            ResponseWrapper(
              status: 'SUCCESS',
              code: '0000',
              message: '',
              data: [],
            ),
      );
    }


    late String source;
    final endOfTabId = tabId % 10;
    switch (endOfTabId) {
      case 1:
        source = DisplayMockData.viewModulesByTabIdCaseOne;
      case 2:
        source = DisplayMockData.viewModulesByTabIdCaseTwo;
      case 3:
        source = DisplayMockData.viewModulesByTabIdCaseThree;
      case 4:
        source = DisplayMockData.viewModulesByTabIdCaseFour;
      case 5:
        source = DisplayMockData.viewModulesByTabIdCaseFive;
    }

    return Future.delayed(
      Duration(seconds: 2),
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
  