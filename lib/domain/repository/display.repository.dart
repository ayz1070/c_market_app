import '../../core/utils/constant.dart';
import '../../data/dto/common/response_wrapper/response_wrapper.dart';
import 'repository.dart';

import '../model/display/display.model.dart';

abstract class DisplayRepository extends Repository{
  Future<ResponseWrapper<List<Menu>>> getMenuByMallType({
    required MallType mallType,
  });

  Future<ResponseWrapper<List<ViewModule>>> getViewModuleByTabId({
    required int tabId,
    required int page,
  });
}