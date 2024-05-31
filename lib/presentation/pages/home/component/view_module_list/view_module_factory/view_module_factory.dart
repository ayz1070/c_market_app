import 'package:flutter/material.dart';

import '../../../../../../core/utils/extensions.dart';
import '../../../../../../domain/model/display/view_module/view_module.model.dart';
import '../view_module_A.dart';
import '../view_module_B.dart';
import '../view_module_C.dart';
import '../view_module_NONE.dart';
import 'view_module_widget.dart';

enum Modules { viewModuleA, viewModuleB, viewModuleC }

class ViewModuleFactory {
  Widget textToWidget(ViewModule viewModule) {
    final String type = viewModule.type.toSnakeCase();
    for (final module in Modules.values) {
      final String name = module.name.toSnakeCase();
      if (name.contains(type)) {
        return module.toWidget() as Widget;
      }
    }

    return const ViewModuleNone();
  }
}

extension ModulesX on Modules {
  ViewModuleWidget toWidget() {
    switch (this) {
      case Modules.viewModuleA:
        return const ViewModuleA();
      case Modules.viewModuleB:
        return const ViewModuleB();
      case Modules.viewModuleC:
        return const ViewModuleC();
    }
  }
}
