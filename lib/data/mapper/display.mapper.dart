import 'package:c_market_app/data/dto/menu/menu.dto.dart';
import 'package:c_market_app/domain/model/display/menu/menu.model.dart';

extension MenuX on MenuDto{
  Menu toModel(){
    return Menu(tabId: tabId ?? -1, title: title ?? '');
  }
}