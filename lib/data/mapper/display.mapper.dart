import 'package:c_market_app/domain/model/display/menu/menu.model.dart';

import '../dto/display/menu/menu.dto.dart';

extension MenuX on MenuDto{
  Menu toModel(){
    return Menu(tabId: tabId ?? -1, title: title ?? '');
  }
}