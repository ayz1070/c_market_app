import 'package:c_market_app/domain/repository/repository.dart';

abstract class RemoteUsecase<T extends Repository>{
  Future call(T repository);
}