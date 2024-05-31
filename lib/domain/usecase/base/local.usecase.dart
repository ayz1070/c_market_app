import 'package:c_market_app/domain/repository/repository.dart';

import 'usecase.dart';

abstract class LocalUsecase<T extends Repository> extends Usecase<T>{}