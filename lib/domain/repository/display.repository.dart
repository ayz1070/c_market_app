import 'package:c_market_app/core/utils/constant.dart';
import 'package:c_market_app/data/dto/common/response_wrapper/response_wrapper.dart';
import 'package:c_market_app/domain/model/display/menu/menu.model.dart';
import 'package:c_market_app/domain/repository/repository.dart';

abstract class DisplayRepository extends Repository{
  Future<ResponseWrapper<List<Menu>>> getMenuByMallType({
    required MallType mallType,
  });
}