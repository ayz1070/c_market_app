import 'package:c_market_app/domain/model/display/display.model.dart';

import '../dto/display/display.dto.dart';
import '../dto/display/menu/menu.dto.dart';

extension MenuX on MenuDto {
  Menu toModel() {
    return Menu(tabId: tabId ?? -1, title: title ?? '');
  }
}

extension ViewModuleX on ViewModuleDto {
  ViewModule toModel() {
    return ViewModule(
      type: type ?? '',
      title: title ?? '',
      subtitle: subtitle ?? '',
      imageUrl: imageUrl ?? '',
    );
  }
}
