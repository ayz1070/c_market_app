import 'view_module_factory/view_module_widget.dart';
import 'package:flutter/material.dart';

class ViewModuleC extends StatelessWidget with ViewModuleWidget {
  const ViewModuleC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 200,
      child: Center(
        child: Text('ViewModuleC'),
      ),
    );
  }
}
