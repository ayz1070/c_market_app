import 'package:c_market_app/domain/repository/display.repository.dart';
import 'package:c_market_app/domain/usecase/base/remote.usecase.dart';
import 'package:injectable/injectable.dart';

@singleton
class DisplayUsecase {
  final DisplayRepository _displayRepository;

  DisplayUsecase(this._displayRepository);

  Future excute<T> ({required RemoteUsecase usecase}) async {
    return await usecase(_displayRepository);
  }
}