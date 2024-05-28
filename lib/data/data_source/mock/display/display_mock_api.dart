import 'dart:convert';

import 'package:c_market_app/data/data_source/mock/display/display_mock_data.dart';
import 'package:c_market_app/data/data_source/remote/display.api.dart';
import 'package:c_market_app/data/dto/common/response_wrapper/response_wrapper.dart';
import 'package:c_market_app/data/dto/menu/menu.dto.dart';

class DisplayMockApi implements DisplayApi {
  @override
  Future<ResponseWrapper<List<MenuDto>>> getMenusByMallType(String mallType) {
    return Future(() =>
        ResponseWrapper(
          status: 'SUCCESS',
          code: '0000',
          message: '',
          data: _menuParser(DisplayMockData.menusByMarket),
        ),
    );
  }

  List<MenuDto> _menuParser(String source) {
    List<MenuDto> menus = [];
    final List json = jsonDecode(source);
    menus = json.map((e) => MenuDto.fromJson(e)).toList();
    return menus;
  }
}