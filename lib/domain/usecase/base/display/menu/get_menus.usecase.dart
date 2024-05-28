import 'package:c_market_app/core/utils/constant.dart';
import 'package:c_market_app/core/utils/error/error_response.dart';
import 'package:c_market_app/domain/model/common/result.dart';
import 'package:c_market_app/domain/repository/display.repository.dart';
import 'package:c_market_app/domain/usecase/base/remote.usecase.dart';

class GetMenusUsecase extends RemoteUsecase<DisplayRepository> {
  final MallType mallType;

  GetMenusUsecase({required this.mallType});

  @override
  Future call(DisplayRepository repository) async {
    final result = await repository.getMenuByMallType(mallType: mallType);

    return (result.status == 'SUCCESS')
        ? Result.Success(result.data ?? [])
        : Result.failure(ErrorResponse(
            status: result.status,
            code: result.code,
            message: result.message,
          )
    );
  }
}
