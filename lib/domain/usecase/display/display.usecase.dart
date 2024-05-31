import 'package:c_market_app/domain/repository/display.repository.dart';
import 'package:c_market_app/domain/usecase/base/remote.usecase.dart';

import '../base/usecase.dart';

class DisplayUsecase {
  final DisplayRepository _displayRepository;

  DisplayUsecase(this._displayRepository);

  Future execute<T> ({required Usecase usecase}) async {
    return await usecase(_displayRepository);
  }
}