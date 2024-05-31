import 'package:c_market_app/domain/repository/display.repository.dart';
import 'package:injectable/injectable.dart';
import '../base/usecase.dart';

@singleton
class DisplayUsecase {
  final DisplayRepository _displayRepository;

  DisplayUsecase(this._displayRepository);

  Future execute<T> ({required Usecase usecase}) async {
    return await usecase(_displayRepository);
  }
}