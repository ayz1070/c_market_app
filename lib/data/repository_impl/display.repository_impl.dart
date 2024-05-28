import 'package:c_market_app/core/utils/constant.dart';
import 'package:c_market_app/data/data_source/remote/display.api.dart';
import 'package:c_market_app/data/dto/common/response_wrapper/response_wrapper.dart';
import 'package:c_market_app/data/mapper/common.mapper.dart';
import 'package:c_market_app/data/mapper/display.mapper.dart';
import 'package:c_market_app/domain/model/display/menu/menu.model.dart';
import 'package:c_market_app/domain/repository/display.repository.dart';

class DisplayRepositoryImpl implements DisplayRepository{
  final DisplayApi _displayApi;

  DisplayRepositoryImpl(this._displayApi);

  @override
  Future<ResponseWrapper<List<Menu>>> getMenuByMallType(
      {required MallType mallType}) async{
    final response = await _displayApi.getMenusByMallType(mallType.name);

    return response.toModel<List<Menu>>(
        response.data?.map((dto)=>dto.toModel()).toList() ?? []
    );
  }

}