import 'dart:ffi';

import 'package:c_market_app/data/dto/common/response_wrapper/response_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/display/display.dto.dart';

// import '../../dto/display/menu/menu.dto.dart';
// 사유 -> data/data_source/remote/display.dto.dart 파일 생성

part 'display.api.g.dart';

@RestApi()
abstract class DisplayApi {
  factory DisplayApi(Dio dio, {String baseUrl}) = _DisplayApi;

  @GET('/api/menus/{mall_type}')
  Future<ResponseWrapper<List<MenuDto>>> getMenusByMallType(
      @Path('mall_type') String mallType
      );


@GET('/api/view-modules/{mall_type}')
Future<ResponseWrapper<List<ViewModuleDto>>> getViewModulesByTabId(
    @Path('tab_id') Int mallType
    );
}