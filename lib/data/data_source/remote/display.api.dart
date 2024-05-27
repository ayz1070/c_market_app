import 'package:c_market_app/data/dto/menu/menu.dto.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'display.api.g.dart';

@RestApi()
abstract class DisplayApi {
  factory DisplayApi(Dio dio, {String baseUrl}) = _DisplayApi;

  @GET('/api/menus/{mall_type}')
  Future<List<MenuDto>> getMenusByMallType(@Path('mall_type') String mallType);
}