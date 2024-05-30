import 'package:injectable/injectable.dart';

import 'mock/display/display_mock_api.dart';
import 'remote/display.api.dart';

@module
abstract class DataSourceModule {

  @singleton
  DisplayApi get displayApi => DisplayMockApi();
}